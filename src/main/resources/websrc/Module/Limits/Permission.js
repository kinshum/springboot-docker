//权限管理
const permissions = JSON.parse(localStorage.permissionsAMS);
//快捷添加收支
export const AccountInsertAction = permissions.indexOf("/Accountitem/insertList.action")>-1;
//收入
export const AccountAddAction = permissions.indexOf("/Accountitem/insert.action")>-1;
//审批收支
export const AccountAuditAction = permissions.indexOf("/Accountitem/audit.action")>-1;
//生成对账单
export const BillAddAction = permissions.indexOf("/bill/insert.action")>-1;
//确定账单
export const BillAuditAction = permissions.indexOf("/bill/audit.action")>-1;
//收支开票
export const BillInvoicedAction = permissions.indexOf("/bill/invoiced.action")>-1;
//收款核销
export const BillPaidAction = permissions.indexOf("/bill/paid.action")>-1;
//结算对象
export const SettlementAddAction = permissions.indexOf("/SettlementObject/insert.action")>-1;
export const SettlementEditAction = permissions.indexOf("/SettlementObject/update.action")>-1;
//费用管理
export const CategoryUploadAction = permissions.indexOf("/AccountCategory/upload.action")>-1;
export const CategoryAddAction = permissions.indexOf("/AccountCategory/insert.action")>-1;
export const CategoryEditAction = permissions.indexOf("/AccountCategory/update.action")>-1;

//业务类型
export const BusinessTypeAddAction = permissions.indexOf("/AmsBusinessType/insert.action")>-1;
export const BusinessTypeEditAction = permissions.indexOf("/AmsBusinessType/update.action")>-1;
export const BusinessTypeDelAction = permissions.indexOf("/AmsBusinessType/delete.action")>-1;
