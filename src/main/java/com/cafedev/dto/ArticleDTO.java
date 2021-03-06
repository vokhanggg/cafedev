package com.cafedev.dto;

import com.cafedev.common.TimeProvider;
import com.cafedev.model.Article;

public class ArticleDTO {

	private Long id;
	private String name;
	private String description;
	private String content;
	private String createDate;
	private String authorName;
	
	public void coppyFrom(Article art) {
		this.id = art.getId();
		this.name = art.getName();
		this.description = art.getDescription();
		this.content = art.getContent();
		this.createDate = TimeProvider.convertDateToString(art.getCreateDate());
		this.authorName = art.getUser().getFirstName() + " " + art.getUser().getLastName();
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
}
