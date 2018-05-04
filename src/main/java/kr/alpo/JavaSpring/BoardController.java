package kr.alpo.JavaSpring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value= "/board")
public class BoardController {
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String board() {
		return "board";
	}
	
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String register() {
		return "boardregister";
	}
	
	@RequestMapping(value="register", method = RequestMethod.POST)
	public String register(String title, String contents, String author, Model model) {
		
		model.addAttribute("title", title);
		model.addAttribute("contents", contents);
		model.addAttribute("author", author);
		return "register :/board/list";
	}
	
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String list(String title, String contents, String author, Model model) {
		Board board = new Board(title, contents, author);
		model.addAttribute("title", title);
		model.addAttribute("contents", contents);
		model.addAttribute("author", author);
		model.addAttribute("test", 123);
		System.out.println(board.title + "," + title);
		return "boardlist";
	}
	


}
