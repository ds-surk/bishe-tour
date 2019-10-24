package com.bdqn.pojo.strategy;

import java.util.Date;

public class Comments {
    private Integer id;
    private Integer UID;
    private Integer CommentType;
    private String Comment;
    private Date createDate;
    private String image;
    private Integer score;
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUID() {
		return UID;
	}
	public void setUID(Integer uID) {
		UID = uID;
	}
	public Integer getCommentType() {
		return CommentType;
	}
	public void setCommentType(Integer commentType) {
		CommentType = commentType;
	}
	public String getComment() {
		return Comment;
	}
	public void setComment(String comment) {
		Comment = comment;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "Comments [id=" + id + ", UID=" + UID + ", CommentType=" + CommentType + ", Comment=" + Comment
				+ ", createDate=" + createDate + ", image=" + image + ", score=" + score + "]";
	}
    
	
   
}
