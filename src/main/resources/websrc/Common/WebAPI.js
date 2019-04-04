import axios from 'axios';
import {notification} from 'antd';

const responseNullData = {
    dataRow:{},
    dataTable:[],
    errorStatus:"",
    id:"",
    message:"",
    page:{},
    success:false,
    token:"",
    totalCount:'',
    categoryDataTable : [],
    categoryDataTable2 : [],
    accountDataRow : {},
    exchangeRate : null,
    myExchangeRate : null,
    totalIncome : [],
    totalOutcome : [],
    money : {},
    accountDataTable : [],
    accountObjList : [],
    costTreeData : [],
    BusinessTypeDataTable : [],
    BusinessTypeByKeyDataRow : {},
    CostDetail : {},
    CostDetailTable :[],
    CostDetailByKeyTable : {},
    CostDataTable : [],
    serviceMenu : [],
    userData : {},
    accountData : {},
    PrepareBill : {},
    PaymentDetailTable : [],
    BillDataRow:{},
    PaymentList : [],
    PrepareList : [],
    PrepareBillDetailTable : [],
    ReceiptDetailTable : [],
    ReceiveList : [],
    countryDataTable : [],
    SettlementDetail : {},
    SettlementDataTable : [],
};
export default function api(url,data) {
    let token = localStorage.ikatsToken?localStorage.ikatsToken:'';
    data.token = token;
    return axios.post(url, data,{headers:{"ikats-ChiGoose-token" : token}}).then(function(response) {
        if(response.data.errorStatus == 405) {
            // location.href="http://.chigoose.com/#/Login";
            return responseNullData;
        }
        return response.data;

    }).catch(function(error) {
        notification.open({
            message: '网络失联',
            description: error
        });
        return responseNullData;
    });
}