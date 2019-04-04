import { observable, action } from "mobx";
import {notification} from 'antd';
import PowerManagerService from "../../../Service/PowerManagerService";

export default class PowerListStore {
    @observable loading;
    @observable roleDataTable;
    @observable roleSelectDataTable;

    constructor() {
        this.loading = false;
        this.roleDataTable = [];
        this.roleSelectDataTable = [];
    }

    @action
    async getPowerList(values,roleId)
    {
        this.roleDataTable=[];
        this.roleSelectDataTable=[]
        this.loading = true;
        let data = {express:{...values}}
        let tree = await PowerManagerService.getPowerList(data);
        let selected = await PowerManagerService.getPowerById({express:{roleId}})
        let getAuth = selected.dataTable?selected.dataTable:[];
        getAuth.map((powerSelect,i)=>{
            this.roleSelectDataTable[i] = ({
                roleId:roleId,
                permissionId:powerSelect.id,
            })
        })
        tree.treeDate.filter((item,inx)=>{
            //菜单栏
            item.checked = false;
            selected.dataTable.map((selectedItem)=>{
                if(item.Id == selectedItem.id){
                    item.checked = true;
                }
            })

            //子菜单
            if(item.children && item.children.length>0 ){

                item.children.filter((childrenItem,childrenInx)=>{

                    childrenItem.checked = false;

                    selected.dataTable.map((selected2Item)=>{

                        if(childrenItem.Id == selected2Item.id){
                            childrenItem.checked = true;
                        }
                    })
                })
            }
        })
        this.roleDataTable = tree.treeDate?tree.treeDate:[];
        this.loading = false;
    };
    // @action
    // async getPowerById(values)
    // {
    //     this.loading = true;
    //     let data = {express:{...values}}
    //     let result = await PowerManagerService.getPowerById(data);
    //     this.roleSelectDataTable = result.dataTable?result.dataTable:[];
    //     this.loading = false;
    // }
    @action
    async powerToRole(dataTable)
    {
        this.loading = true;
        let data = {dataTable:dataTable}
        let result = await PowerManagerService.powerToRole(data);
        this.loading = false;
        if(result.success){
            notification.open({
                message:"权限设置成功,请重新登陆！",
                description:result.message
            });
        }else{
            notification.open({
                message:"权限设置失败",
                description:result.message
            });
        }
    }
    @action
    async updatePower(dataTable)
    {
        this.loading = true;
        let data = {dataTable:dataTable}
        let result = await PowerManagerService.updatePower(data);
        this.loading = false;
        if(result.success){
            notification.open({
                message:"权限设置成功,请重新登陆！",
                description:result.message
            });
        }else{
            notification.open({
                message:"权限设置失败",
                description:result.message
            });
        }
    }


}
