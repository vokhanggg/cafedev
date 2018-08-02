package com.cafedev.repository;

import java.util.List;

import com.cafedev.model.Comment;

public interface CommentRepository {

	List<Comment> findByFeedId(Long feedId);
}