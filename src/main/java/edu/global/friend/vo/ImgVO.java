package edu.global.friend.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
@Data
public class ImgVO {

   private int custno;
   private String imgname1;
   private String imgname2;
   private String imgname3;
   private String imgname4;
   private String imgname5;
   private String imgname6;
   private MultipartFile imageFile1;
   private MultipartFile imageFile2;
   private MultipartFile imageFile3;
   private MultipartFile imageFile4;
   private MultipartFile imageFile5;
   private MultipartFile imageFile6;

}