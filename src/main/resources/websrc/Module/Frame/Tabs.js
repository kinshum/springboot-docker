import React,{Component} from 'react';
import { Tabs } from 'antd';
const TabPane = Tabs.TabPane;
export default class Tab extends Component{


    render(){
        const {tabs}=this.props;
        return(
            <Tabs
                hideAdd
                activeKey={this.props.activeKey}
                type="editable-card"
                tabBarStyle={{padding:'0px 1px',marginBottom: '0px'}}
                onEdit={this.props.onEdit}
                onChange={this.props.onChange}
            >{
                tabs.map((tab,index)=>{
                    return(<TabPane tab={tab.title} key={tab.key} ></TabPane>)
                })
            }

            </Tabs>
        )
    }
}