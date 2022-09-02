package project.team.GaVolCar.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.MemberInfoService;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Controller
public class MemberInfoController {
	
	@Autowired
	private MemberInfoService service;
	
	@GetMapping("/user/info")
	public void info(Principal principal, Model model) {
		log.info("info()..");
		log.info("회원아이디 : "+principal.getName());
		String user_id = principal.getName();
		UsersVO user = service.readMember(user_id);
		model.addAttribute("info", user);
	}
	
	@GetMapping("/user/modify")
	public String modify(UsersVO usersVO) {
		log.info("modify()..");
		int rn = service.updateMember(usersVO);
		log.info("modify()..result number : " + rn);
		return "redirect:/user/userHome";
	}
	
	@GetMapping("/user/delete")
	public String delete(UsersVO usersVO) {
		log.info("delete()..");
		int rn = service.deleteMember(usersVO);
		log.info("delete()..result number : " + rn);
		return "redirect:/login";
	}
	
	@GetMapping("/user/couponInfo")
	public void couponInfo() {
		log.info("couponInfo()..");
		
	}

}
