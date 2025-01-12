package home.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import home.member.dto.MemberVO;
import home.member.service.MemberService;
import home.member.service.SearchMemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
private final SearchMemberService memberService;
	
	@Autowired
	public MemberController(SearchMemberService memberService) {
		this.memberService = memberService;
	}

    @GetMapping("/join")
    public String join() {
        return "member/join"; // 회원가입 페이지로 이동
    }

	@PostMapping("/join")
	public String joinGo() {
		return "member/main";
	}
	
	@GetMapping("/idCheck")
	@ResponseBody
	public String idCheck(String mid) throws Exception {
		String result = "duplicated";
		MemberVO member = memberService.getMember(mid);
		if (member == null)
			result = "";

		return result;
	}
    
    @GetMapping("/login")
    public String login() {
        return "member/login"; // 로그인 페이지로 이동
    }
    
    @PostMapping("/login")
    public String loginGo() {
        return "member/main";
    }
    
    @GetMapping("/bmain")
    public String logout() {
        return "member/bmain";
    }
    
    @PostMapping("/submit")
    public String submitForm(
        @RequestParam String id,
        @RequestParam String email,
        @RequestParam("file") MultipartFile file,
        Model model) {
        
        // 아이디 유효성 검사
        if (id == null || id.isEmpty() || id.length() > 6) {
            model.addAttribute("error", "아이디는 영문자 또는 숫자로 시작하는 6자리로 입력해야 합니다.");
            return "main";
        }
        
        // 이메일 유효성 검사
        if (!email.matches("^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$")) {
            model.addAttribute("error", "유효한 이메일 형식을 입력해주세요. 예: example@naver.com");
            return "main";
        }
        
        // 파일 유효성 검사
        if (file != null && !file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            String fileExtension = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();

            if (!fileExtension.equals("jpg") && !fileExtension.equals("jpeg")) {
                model.addAttribute("error", "이미지는 JPG/JPEG 형식만 가능합니다.");
                return "member/m_main";
            }

            if (file.getSize() > 1024 * 1024) {
                model.addAttribute("error", "이미지 파일 크기는 1MB 이하만 가능합니다.");
                return "member/m_main";
            }
        } else {
            model.addAttribute("error", "이미지 파일을 선택해주세요.");
            return "member/m_main";
        }
        
        return "redirect:/member/m_main"; // 성공 시 메인 페이지로 이동
    }

    @GetMapping("/main")
    public String mainPage() {
        return "member/main"; // 메인 페이지
    }
    
    @GetMapping("/xmain")
    public String xmainPage() {
        return "member/xmain"; // 비회원메인 페이지
    }
    
	/*
	 * @PostMapping("/mmain") public String login() { return "member/main"; }
	 */

    @GetMapping("/checkId")
    @ResponseBody
    public String checkId(@RequestParam String id) {
        // 간단한테스트
        if ("dori".equals(id)) {
            return "이미 사용 중인 아이디입니다.";
        }
        return "사용 가능한 아이디입니다.";
    }
    
    @GetMapping("/login/find/id")
    public String find_id() {
    	return "member/login/find/id";
    }
    
    @GetMapping("/login/find/pwd")
    public String find_pwd() {
    	return "member/login/find/pwd";
    }

	@GetMapping("/intro")
	public String mainpage(Model model) {
		model.addAttribute("pageTitle", "센터소개");
		return "member/intro";
	}
	
	@GetMapping("/intro/notice")
	public String notice() {
		return "member/intro/notice";
	}
	
	@GetMapping("/intro/way")
	public String way() {
		return "member/intro/way";
	}
	
	@GetMapping("/intro/notice/detail")
	public String notice_detail() {
		return "member/intro/notice/detail";
	}
	
    @GetMapping("/mypage/deactivation")
    public String mypage(Model model) {
    	model.addAttribute("pageTitle", "마이페이지");
    	return "member/mypage/deactivation";
    }
    
    @PostMapping("/mypage/deactivation/modify")
    public String mypage_modify() {
    	return "member/mypage/deactivation/modify";
    }
    
    @GetMapping("/mypage/deactivation/cancel")
    public String mypage_deactivation() {
    	return "member/mypage/deactivation/cancel";
    }
    
    @GetMapping("/mypage/deactivation/open_cancel")
    public String mypage_deactivation_open() {
    	return "member/mypage/deactivation/open_cancel";
    }
    
    @GetMapping("/mypage/adopt")
    public String mypage_adopt() {
    	return "member/mypage/adopt";
    }
    
    @GetMapping("/mypage/adopt/open_animal")
    public String adopt_detail() {
    	return "member/mypage/adopt/open_animal";
    }
    
    @GetMapping("/mypage/mark/list")
    public String mypage_mark() {
    	return "member/mypage/mark/list";
    }
    
    @GetMapping("/mypage/mark/test")
    public String mark_test() {
    	return "member/mypage/mark/test";
    }
    
    @GetMapping("/board/main")
    public String board_main() {
    	return "member/board/main";
    }
    
    @GetMapping("/board/sharing")
    public String sharing() {
    	return "member/board/sharing";
    }
    
    @GetMapping("/board/sharing/detail")
    public String sharing_detail() {
    	return "member/board/sharing/detail";
    }
    
}
