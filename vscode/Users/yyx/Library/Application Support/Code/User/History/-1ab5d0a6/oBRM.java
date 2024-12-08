package com.saiuya.blog.validator;

import com.saiuya.blog.model.vo.request.CommentReq;
import com.saiuya.blog.validator.groups.ArticleTalk;
import com.saiuya.blog.validator.groups.Link;
import com.saiuya.blog.validator.groups.ParentIdNotNull;
import com.saiuya.blog.validator.groups.ParentIdNull;
import org.hibernate.validator.spi.group.DefaultGroupSequenceProvider;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import static com.saiuya.blog.enums.CommentTypeEnum.*;

/**
 * 评论分组校验器
 *
 * @author saiuya
 **/
public class CommentProvider implements DefaultGroupSequenceProvider<CommentReq> {
    @Override
    public List<Class<?>> getValidationGroups(CommentReq commentReq) {
        List<Class<?>> defaultGroupSequence = new ArrayList<>();
        defaultGroupSequence.add(CommentReq.class);
        if (commentReq != null) {
            if (commentReq.getCommentType().equals(ARTICLE.getType())
                    || commentReq.getCommentType().equals(TALK.getType())) {
                defaultGroupSequence.add(ArticleTalk.class);
            }
            if (commentReq.getCommentType().equals(LINK.getType())) {
                defaultGroupSequence.add(Link.class);
            }
            if (Objects.isNull(commentReq.getParentId())) {
                defaultGroupSequence.add(ParentIdNull.class);
            }
            if (Objects.nonNull(commentReq.getParentId())) {
                defaultGroupSequence.add(ParentIdNotNull.class);
            }
        }
        return defaultGroupSequence;
    }
}