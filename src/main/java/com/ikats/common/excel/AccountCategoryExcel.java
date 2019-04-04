package com.ikats.common.excel;


import com.ikats.ams.entity.AccountCategoryBean;
import com.ikats.ams.entity.query.AccountCategoryQuery;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

import static com.ikats.common.util.PoiGetStringValue.getCellValue;


public class AccountCategoryExcel {
    /**
     * 费用模板
     * @param file
     * @return
     */
    public static AccountCategoryQuery categoryImport(MultipartFile file) {
        AccountCategoryQuery result = new AccountCategoryQuery();
        if(null !=file) {
            try {
                //这是解析 xlsx 的类  ; hssfworkbook 解析xls
                XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());
                //取得第一个 sheet , 也可以根据名字取
                XSSFSheet sheetAt = workbook.getSheetAt(0);
                //父级集合
                List<AccountCategoryBean> beans = new ArrayList<>();
                //子级集合
                List<AccountCategoryBean> categoryBeans = new ArrayList<>();
                //遍历 sheet 里面的 row
                for (Row row : sheetAt) {
                    //父级实体
                    AccountCategoryBean bean = new AccountCategoryBean();
                    //子级实体
                    AccountCategoryBean categoryBean = new AccountCategoryBean();
                    //得到行号
                    int rowNum = row.getRowNum();
                    //忽略 没必要的行
                    if (rowNum == 0 || rowNum == 1) {
                        continue;
                    }


                    if(rowNum > 0){
                        if (StringUtils.isEmpty(getCellValue(row,0))&& StringUtils.isEmpty(getCellValue(row,1))&& StringUtils.isEmpty(getCellValue(row,2))){
                            break;
                        }
                        //根据行号一行一行的取数据setCategoryName
                        bean.setCategoryCode(getCellValue(row,0));
                        bean.setCategoryName(getCellValue(row,1));
                        categoryBean.setCategoryCode(getCellValue(row,2));
                        categoryBean.setCategoryName(getCellValue(row,3));

                    }
                    beans.add(bean);
                    categoryBeans.add(categoryBean);
                }
                //封装数据
                result.setDataTable(beans);
                result.setDataList(categoryBeans);
            }catch (Exception e) {
                System.out.print(e.getMessage());
            }
        }
        else {
            return result;
        }
        return result;
    }

    
}
