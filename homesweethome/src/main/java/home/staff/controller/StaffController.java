package home.staff.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/staff")
public class StaffController {

    @GetMapping("/smain")
    public String staff() {
    	return "staff/s_main";
    }
    
    @GetMapping("/member/list")
    public String member_list() {
    	return "staff/member/list";
    }
    
    @PostMapping("/member/list")
    public String member_list1() {
    	return "staff/member/list";
    }
    
    @GetMapping("/member/list/detail")
    public String member_detail() {
    	return "staff/member/list/detail";
    }
    
    @GetMapping("/member/deactivation")
    public String deactive() {
    	return "staff/member/deactivation";
    }
    
    @PostMapping("/member/deactivation")
    public String deactive_detail() {
    	return "staff/member/deactivation";
    }
    
    @GetMapping("/member/list/deactivation_detail")
    public String deactivation_detail() {
    	return "staff/member/list/deactivation_detail";
    }
    
    @GetMapping("/board/notice")
    public String notice() {
        return "staff/board/notice";
    }
    
    @GetMapping("/board/notice/detail")
    public String notice_detail() {
    	return "staff/board/notice/detail";
    }
    
    @GetMapping("/board/report")
    public String report() {
        return "staff/board/report";
    }
    
    @GetMapping("/board/report/detail")
    public String report_detail() {
        return "staff/board/report/detail";
    }
    
    @GetMapping("/board/report/complete")
    public String report_complete() {
        return "staff/board/report/complete";
    }
    
    @GetMapping("/board/review")
    public String review() {
        return "staff/board/review";
    }
    
    @GetMapping("/board/review/detail")
    public String review_detail() {
        return "staff/board/review/detail";
    }
    
    @GetMapping("/board/review/complete")
    public String review_complete() {
        return "staff/board/review/complete";
    }
    
    @GetMapping("/board/inquiry")
    public String inquiry() {
        return "staff/board/inquiry";
    }
    
    @GetMapping("/board/inquiry/detail")
    public String inquiry_detail() {
        return "staff/board/inquiry/detail";
    }
}
