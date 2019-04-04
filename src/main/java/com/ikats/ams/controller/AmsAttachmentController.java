package com.ikats.ams.controller;

import com.ikats.ams.entity.AmsAttachmentBean;
import com.ikats.ams.entity.dto.AmsAttachmentDto;
import com.ikats.ams.entity.query.AmsAttachmentQuery;
import com.ikats.ams.service.IAmsAttachmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Date;

/**
 * @Author: jz
 * @Date: Created in 9:59 2017/9/13
 * @Description:
 */
@Controller
@RequestMapping("AmsAttachment")
public class AmsAttachmentController {

    @Autowired
    private IAmsAttachmentService service;

    @Autowired
    private HttpServletRequest request;

    /**
     * Web入口:添加附件管理表
     * @param query
     * @return AmsAttachmentDto
     */
    @ResponseBody
    @RequestMapping(value = "insert", method = {RequestMethod.POST})
    public AmsAttachmentDto insert(@RequestBody AmsAttachmentQuery query)
    {
        AmsAttachmentDto dto = service.insert(query);
        return dto;
    }

    /**
     * Web入口:删除附件管理表
     * @param query
     * @return AmsAttachmentDto
     */
    @ResponseBody
    @RequestMapping(value = "delete", method = {RequestMethod.POST})
    public AmsAttachmentDto delete(@RequestBody AmsAttachmentQuery query)
    {
        AmsAttachmentDto dto = new AmsAttachmentDto();
        String path = request.getSession().getServletContext().getRealPath("/") + "file/attachment/";
        if (query.getExpress().containsKey("id")){
             dto = service.delete(query);
        }
        if (query.getExpress().containsKey("url")){
            File file = new File(path + query.getExpress().get("url"));
            if (file.exists()) {
                file.delete();
                dto.setMessage("删除成功");
                dto.setSuccess(true);
                return dto;
            }
        }
        dto.setSuccess(false);
        dto.setMessage("文件不存在");
        return dto;
    }

    /**
     * Web入口:更新附件管理表
     * @param query
     * @return AmsAttachmentDto
     */
    @ResponseBody
    @RequestMapping(value = "update", method = {RequestMethod.POST})
    public AmsAttachmentDto update(@RequestBody AmsAttachmentQuery query)
    {
        AmsAttachmentDto dto = service.update(query);
        return dto;
    }

    /**
     * Web入口:获取单行附件管理表
     * @param query
     * @return AmsAttachmentDto
     */
    @ResponseBody
    @RequestMapping(value = "selectByKey", method = {RequestMethod.POST})
    public AmsAttachmentDto selectByKey(@RequestBody AmsAttachmentQuery query)
    {
        AmsAttachmentDto dto = service.selectByKey(query);
        return dto;
    }

    /**
     * Web入口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    @ResponseBody
    @RequestMapping(value = "selectCount", method = {RequestMethod.POST})
    public AmsAttachmentDto selectCount(@RequestBody AmsAttachmentQuery query, HttpServletRequest request)
    {
        AmsAttachmentDto dto =service.selectCount(query);
        return dto;
    }

    /**
     * Web入口:翻页查询附件管理表
     * @param query
     * @return AmsAttachmentDto
     */
    @ResponseBody
    @RequestMapping(value = "pageByQuery", method = {RequestMethod.POST})
    public AmsAttachmentDto pageByQuery(@RequestBody AmsAttachmentQuery query)
    {
        AmsAttachmentDto dto = service.pageByQuery(query);
        return dto;
    }

    /**
     * 上传附件
     **/
    @ResponseBody
    @RequestMapping(value = "upload", method = {RequestMethod.POST},produces = "text/html;charset=UTF-8")
    public Object uploadImg(@RequestParam(value = "file") MultipartFile file, HttpServletResponse response) {
        AmsAttachmentBean attachmentBean = new AmsAttachmentBean();
        response.setCharacterEncoding("utf-8");
        try {
            String fileName = file.getOriginalFilename();
            if (fileName != null) {
                String[] pictureName = fileName.split("\\.");
                String extensionName = fileName.substring(fileName.lastIndexOf("."));
                String newFileName = String.valueOf(new Date().getTime() + extensionName);
                String path = request.getSession().getServletContext().getRealPath("/") + "file/attachment/";
                System.out.println(path);
                File targetFile = new File(path, newFileName);
                if (!targetFile.exists()) {
                    targetFile.mkdirs();
                }
                //保存到文件
                file.transferTo(targetFile);
                //文件的扩张名
//                  String newFileName = "resources/img/"+fileName;
                attachmentBean.setAttachmentUrl(newFileName);
                attachmentBean.setPictureName(pictureName[0]);
                return attachmentBean;
            }
        } catch (Exception e) {

        }
        return "index";
    }


}
