package com.bdqn.controller.strategy;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bdqn.pojo.strategy.Comments;
import com.bdqn.service.strategy.PhotosService;
import com.bdqn.service.strategy.CommentsService;

@Controller
public class TestController {
	/*
	@Autowired
	CommentsService commentsService;
	
	/**
	 * 鏌ヨ鎵�鏈�
	 * @param model
	 * @return
	 */
	/*@RequestMapping("/list.do")
    public String listUser( Model model){
        List<Comments> list= commentsService.list();
        model.addAttribute("list",list);
        System.out.println(list);
        return "/list";
    }
    
    /**
     * 淇濆瓨
     * @param file
     * @param comments
     * @param map
     * @return
     * @throws IOException
     */
    /*@RequestMapping("/addComments.do")
    public String fileUpload(MultipartFile file,Comments comments, ModelMap map) throws IOException {
	
        /**
         * 涓婁紶鍥剧墖
         */
	/*
        //鍥剧墖涓婁紶鎴愬姛鍚庯紝灏嗗浘鐗囩殑鍦板潃鍐欏埌鏁版嵁搴�
        String filePath = "D:\\upload";//淇濆瓨鍥剧墖鐨勮矾寰�
        //鑾峰彇鍘熷鍥剧墖鐨勬嫇灞曞悕
        String originalFilename = file.getOriginalFilename();
        //鏂扮殑鏂囦欢鍚嶅瓧
        String newFileName = UUID.randomUUID()+originalFilename;
        //灏佽涓婁紶鏂囦欢浣嶇疆鐨勫叏璺緞
        File targetFile = new File(filePath,newFileName);
        //鎶婃湰鍦版枃浠朵笂浼犲埌灏佽涓婁紶鏂囦欢浣嶇疆鐨勫叏璺緞
        file.transferTo(targetFile);
        comments.setImage(newFileName);
        
        /**
         * 淇濆瓨
         */
        /*commentsService.save(comments);
        return "redirect:/list.do";
    }*/
	
    @Autowired
	PhotosService photosService;
    
    @RequestMapping("/comment_index")
	public ModelAndView listIndex(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("commentJsp/index");
		mav.addObject("all", photosService.list());
		return mav;
	}
    @RequestMapping("/comment")
	public ModelAndView listComment(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("commentJsp/comment");
		mav.addObject("all", photosService.list());
		return mav;
	}
    @RequestMapping("/methodDetail")
	public ModelAndView listMethodDetail(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("commentJsp/methodDetail");
		mav.addObject("all", photosService.list());
		return mav;
	}
    
}
