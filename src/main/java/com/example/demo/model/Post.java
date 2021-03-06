package com.example.demo.model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Data
@Table(name = "Post")
public class Post implements Serializable {

    @Id
    @Column(name = "post_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int post_id;

    @Column(name = "writer")
    private String writer;

    @Column(name = "comment")
    private String comment;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "notice_id")
    private Notice notice;

    public Notice getNotice() {
        return notice;
    }

    public void setNotice(Notice notice) {
        this.notice = notice;
    }

    public Post(String writer, String comment, Notice notice) {
        this.writer = writer;
        this.comment = comment;
        this.notice = notice;
    }

    @Override
    public String toString() {
        return "id : " + post_id + "\n" +
                "글쓴이 : " + writer + "\n" +
                "댓글내용 : " + comment + "\n";
    }
}
