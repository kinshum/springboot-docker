package com.ikats.common.util;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;


public class PoiGetStringValue {
    /**
     * 把单元格里面的数据 , 全部以String的格式取出
     * @param row
     * @param cellNumber
     * @return
     */
    public static String getCellValue(Row row, int cellNumber) {
        String value = "";
        if(row.getCell(cellNumber)!= null) {
            if(row.getCell(cellNumber).getCellType()== XSSFCell.CELL_TYPE_NUMERIC) {
                if (XSSFDateUtil.isCellDateFormatted(row.getCell(cellNumber))) {
                    //  如果是date类型则 ，获取该cell的date值
                    value = new SimpleDateFormat("yyyy/MM/dd").format(XSSFDateUtil.getJavaDate(row.getCell(cellNumber).getNumericCellValue()));
                }
                else {
                    DecimalFormat df = new DecimalFormat("0");
                    value = row.getCell(cellNumber) == null ? "" : df.format(row.getCell(cellNumber).getNumericCellValue());
                }
            }
            if(row.getCell(cellNumber).getCellType()==XSSFCell.CELL_TYPE_STRING){
                value = row.getCell(cellNumber) == null ? "" : row.getCell(cellNumber).getStringCellValue();
            }
        }
        return value.trim();
    }
}
