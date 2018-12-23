package com.cafedev.service;

import java.util.List;

import com.cafedev.dto.RequestDTO;
import com.cafedev.model.Article;

public interface ArticleService {
	public List<Article> findAllByTopicId(RequestDTO<Long> request);
}
