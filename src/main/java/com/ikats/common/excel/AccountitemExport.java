package com.ikats.common.excel;

import com.ikats.ams.entity.AccountitemBean;
import com.ikats.ams.entity.enumerate.InOutStatus;
import com.ikats.ams.entity.enumerate.SettleTypeStatus;
import org.apache.poi.hssf.usermodel.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@SuppressWarnings("deprecation")
public class AccountitemExport {
    /**
     * @功能：手工构建一个简单格式的Excel
     */
    public static String createExcel(HttpServletResponse response, List<AccountitemBean> beans, HttpServletRequest request) throws Exception
    {
        // 第一步，创建一个webbook，对应一个Excel文件
        HSSFWorkbook wb = new HSSFWorkbook();
        // 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
        HSSFSheet sheet = wb.createSheet("记账管理");
        // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
        HSSFRow row = sheet.createRow((int) 0);
        // 第四步，创建单元格，并设置值表头 设置表头居中
        HSSFCellStyle style = wb.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
        HSSFCell cell = row.createCell((short) 0);
        cell.setCellValue("业务编号");
        cell.setCellStyle(style);
        cell = row.createCell((short) 1);
        cell.setCellValue("业务类型");
        cell.setCellStyle(style);
        cell = row.createCell((short) 2);
        cell.setCellValue("明细编号");
        cell.setCellStyle(style);
        cell = row.createCell((short) 3);
        cell.setCellValue("收/支类型");
        cell.setCellStyle(style);
        cell = row.createCell((short) 4);
        cell.setCellValue("费用明细");
        cell.setCellStyle(style);
        cell = row.createCell((short) 5);
        cell.setCellValue("结算对象");
        cell.setCellStyle(style);
        cell = row.createCell((short) 6);
        cell.setCellValue("结算方式");
        cell.setCellStyle(style);
        cell = row.createCell((short) 7);
        cell.setCellValue("交易金额");
        cell.setCellStyle(style);
        cell = row.createCell((short) 8);
        cell.setCellValue("交易币种");
        cell.setCellStyle(style);
        cell = row.createCell((short) 9);
        cell.setCellValue("汇率");
        cell.setCellStyle(style);
        cell = row.createCell((short) 10);
        cell.setCellValue("交易时间");
        cell.setCellStyle(style);
        cell = row.createCell((short) 11);
        cell.setCellValue("交易概要");
        cell.setCellStyle(style);
        cell = row.createCell((short) 12);
        cell.setCellValue("备注");
        cell.setCellStyle(style);
        // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
        List list = beans;

        for (int i = 0; i < list.size(); i++)
        {
            row = sheet.createRow((int) i + 1);
            AccountitemBean bean = (AccountitemBean)list.get(i);
            // 第四步，创建单元格，并设置值
            if (bean.getRefNo()!=null){
                row.createCell((short) 0).setCellValue(bean.getRefNo());
            }
            if (bean.getBusinessType()!=null){
                row.createCell((short) 1).setCellValue(bean.getBusinessType());
            }
            if (bean.getItemId()!=null){
                row.createCell((short) 2).setCellValue(bean.getItemId());
            }
            if (bean.getInout()!=null){
                if (bean.getInout().equals(InOutStatus.REVENUE.getValue())){
                    row.createCell((short) 3).setCellValue("收入");
                }else if(bean.getInout().equals(InOutStatus.DISBURSEMENT.getValue())){
                    row.createCell((short) 3).setCellValue("支出");
                }
            }
            if (bean.getCategoryLevel2Name()!=null){
                row.createCell((short) 4).setCellValue(bean.getCategoryLevel2Name());
            }
            if (bean.getSettlementObjectName()!=null){
                row.createCell((short) 5).setCellValue(bean.getSettlementObjectName());
            }
            if (bean.getSettleType()!=null){
                if (bean.getSettleType().equals(SettleTypeStatus.CASH.getValue())){
                    row.createCell((short) 6).setCellValue("现结");
                }else if(bean.getSettleType().equals(SettleTypeStatus.MONTHLY.getValue())){
                    row.createCell((short) 6).setCellValue("月结");
                }
            }
            if (bean.getAmount()!=null){
                row.createCell((short) 7).setCellValue(bean.getAmount().toString());
            }
            if (bean.getCurrency()!=null){
                row.createCell((short) 8).setCellValue(bean.getCurrency().toString());
            }
            if (bean.getExchangeRate()!=null){
                row.createCell((short) 9).setCellValue(bean.getExchangeRate().toString());
            }
            if (bean.getTradeTime()!=null){
                cell = row.createCell((short) 10);
                cell.setCellValue(new SimpleDateFormat("yyyy-mm-dd").format(bean.getTradeTime()));
            }
            if (bean.getAccountBrief()!=null){
                row.createCell((short) 11).setCellValue(bean.getAccountBrief());
            }
            if (bean.getNote()!=null){
                row.createCell((short) 12).setCellValue(bean.getNote());
            }
        }
        // 第六步，将文件存到指定位置,返回地址
        try
        {
            String path = request.getSession().getServletContext().getRealPath("/") + "file/export/";
            System.out.println(path);
            File targetFile = new File(path);
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            String format = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
            FileOutputStream fout = new FileOutputStream(request.getSession().getServletContext().getRealPath("/")+"file/export"+"/"+format+".xls");
            wb.write(fout);
            fout.close();
            return format+".xls";
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return "导出失败";
        }
//        // 下载文件
//        OutputStream out = null;
//        try {
//            out = response.getOutputStream();
//            String fileName = "记账管理.xls";// 文件名
//            response.setContentType("application/x-msdownload");
//            response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(fileName, "UTF-8"));
//            wb.write(out);
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                out.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
    }
}
