package com.saiuya.blog.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.saiuya.blog.constant.RedisConstant;
import com.saiuya.blog.entity.SiteConfig;
import com.saiuya.blog.enums.FilePathEnum;
import com.saiuya.blog.mapper.SiteConfigMapper;
import com.saiuya.blog.strategy.context.UploadStrategyContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.Objects;

/**
 * 网站配置服务
 *
 * @author saiuya
 */
@Slf4j
@Service
public class SiteConfigService extends ServiceImpl<SiteConfigMapper, SiteConfig> {

    @Autowired
    private SiteConfigMapper siteConfigMapper;

    @Autowired
    private RedisService redisService;

    @Autowired
    private UploadStrategyContext uploadStrategyContext;

    @Autowired
    private BlogFileService blogFileService;

    public SiteConfig getSiteConfig() {
        SiteConfig siteConfig = redisService.getObject(RedisConstant.SITE_SETTING);
        if (Objects.isNull(siteConfig)) {
            // 从数据库中加载
            siteConfig = siteConfigMapper.selectById(1);
            redisService.setObject(RedisConstant.SITE_SETTING, siteConfig);
        }
        return siteConfig;
    }

    public void updateSiteConfig(SiteConfig siteConfig) {
        baseMapper.updateById(siteConfig);
        redisService.deleteObject(RedisConstant.SITE_SETTING);
    }

    public String uploadSiteImg(MultipartFile file) {
        // 上传文件
        String url = uploadStrategyContext.executeUploadStrategy(file, FilePathEnum.CONFIG.getPath());
        blogFileService.saveBlogFile(file, url, FilePathEnum.CONFIG.getFilePath());
        return url;
    }
}
