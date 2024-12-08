package com.saiuya.blog.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.saiuya.blog.entity.Carousel;
import com.saiuya.blog.enums.FilePathEnum;
import com.saiuya.blog.mapper.CarouselMapper;
import com.saiuya.blog.model.vo.PageResult;
import com.saiuya.blog.model.vo.query.CarouselQuery;
import com.saiuya.blog.model.vo.request.CarouselReqVo;
import com.saiuya.blog.model.vo.request.CarouselStatusReq;
import com.saiuya.blog.model.vo.response.CarouselBackResp;
import com.saiuya.blog.model.vo.response.CarouselResp;
import com.saiuya.blog.strategy.context.UploadStrategyContext;
import com.saiuya.blog.utils.BeanCopyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 轮播图服务
 *
 * @author saiuya
 */
@Service
public class CarouselService extends ServiceImpl<CarouselMapper, Carousel> {

    @Autowired
    private CarouselMapper carouselMapper;

    @Autowired
    private UploadStrategyContext uploadStrategyContext;

    @Autowired
    private BlogFileService blogFileService;

    public PageResult<CarouselBackResp> getCarouselVOList(CarouselQuery carouselQuery) {
        // 查询轮播图数量
        Long count = carouselMapper.selectCount(null);
        if (count == 0) {
            return new PageResult<>();
        }
        // 分页查询轮播图列表
        List<CarouselBackResp> carouselList = carouselMapper.selectBackCarouselList(carouselQuery);
        return new PageResult<>(carouselList, count);
    }

    public void addCarousel(CarouselReqVo carouselReqVo) {
        Carousel carousel = BeanCopyUtils.copyBean(carouselReqVo, Carousel.class);
        carouselMapper.insert(carousel);
    }

    public void updateCarousel(CarouselReqVo carouselReqVo) {
        Assert.notNull(carouselReqVo.getId(), "id is null");
        Carousel carousel = BeanCopyUtils.copyBean(carouselReqVo, Carousel.class);
        carouselMapper.updateById(carousel);
    }

    public List<CarouselResp> getCarouselList() {
        return carouselMapper.selectCarouselList();
    }

    public String uploadCarousel(MultipartFile file) {
        // 上传文件
        String url = uploadStrategyContext.executeUploadStrategy(file, FilePathEnum.CAROUSEL.getPath());
        blogFileService.saveBlogFile(file, url, FilePathEnum.CAROUSEL.getFilePath());
        return url;
    }

    public void updateCarouselStatus(CarouselStatusReq carouselStatusReq) {
        Carousel carousel = Carousel.builder()
                .id(carouselStatusReq.getId())
                .status(carouselStatusReq.getStatus())
                .build();
        carouselMapper.updateById(carousel);
    }

}
