package com.gy.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.gy.beans.Account;
import com.gy.beans.AccountNotes;
import com.gy.beans.Class_category;
import com.gy.beans.Class_hour;
import com.gy.beans.Course;
import com.gy.beans.CourseAssess;
import com.gy.beans.Notes;
import com.gy.beans.StudyCourse;
import com.gy.beans.TeachCourse;
import com.gy.beans.UserInfo;
import com.gy.biz.AccountBiz;
import com.gy.biz.AccountNotesBiz;
import com.gy.biz.CategoryBiz;
import com.gy.biz.CourseAssessBiz;
import com.gy.biz.CourseBiz;
import com.gy.biz.StudyCourseBiz;
import com.gy.biz.TeachCourseBiz;
import com.gy.biz.UserInfoBiz;

@Controller
@SessionAttributes({ "category", "class_id" }) // ①将ModelMap中属性名为users的属性
public class CourseController {
	private UserInfoBiz userInfoBiz;
	private CourseBiz courseBiz;
	private CategoryBiz categoryBiz;
	private StudyCourseBiz studyCourseBiz;
	private TeachCourseBiz teachCourseBiz;
	private AccountBiz accountBiz;
	private AccountNotesBiz accountNotesBiz;

	@Resource(name = "accountNotesBizImpl")
	public void setAccountNotesBiz(AccountNotesBiz accountNotesBiz) {
		this.accountNotesBiz = accountNotesBiz;
	}

	@Resource(name = "accountBizImpl")
	public void setAccountBiz(AccountBiz accountBiz) {
		this.accountBiz = accountBiz;
	}

	@Resource(name = "userInfoBizImpl")
	public void setUserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}

	public TeachCourseBiz getTeachCourseBiz() {
		return teachCourseBiz;
	}

	@Resource(name = "teachCourseBizImpl")
	public void setTeachCourseBiz(TeachCourseBiz teachCourseBiz) {
		this.teachCourseBiz = teachCourseBiz;
	}

	private CourseAssessBiz courseAssessBiz;

	@Resource(name = "courseAssessBizImpl")
	public void setCourseAssessBiz(CourseAssessBiz courseAssessBiz) {
		this.courseAssessBiz = courseAssessBiz;
	}

	@Resource(name = "userInfoBizImpl")
	public void setuserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}

	@Resource(name = "studyCourseBizImpl")
	public void setCategoryBiz(StudyCourseBiz studyCourseBiz) {
		this.studyCourseBiz = studyCourseBiz;
	}

	@Resource(name = "categoryBizImpl")
	public void setCategoryBiz(CategoryBiz categoryBiz) {
		this.categoryBiz = categoryBiz;
	}

	public CourseBiz getuserInfoBiz() {
		return courseBiz;
	}

	@Resource(name = "courseBizImpl")
	public void setuserInfoBiz(CourseBiz courseBiz) {
		this.courseBiz = courseBiz;
	}

	// 使用JSON回传数据 综合排序显示课程 某一类的所有课程
	@RequestMapping(value = "/getCourseInformation.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String getCourseInformation(HttpServletResponse response, Course course,
			@RequestParam("rang") int rang) throws IOException {
		// System.out.println(course.getClass_id());
		Gson gson = new Gson();
		List<Course> list;
		if (course.getClass_id() < 1) {// 查询所有
			if (rang == -1 || "-1".equals(rang)) {// 最热排行
				list = this.courseBiz.findAllHotCourse();
			} else if (rang == -2 || "-2".equals(rang)) {
				list = this.courseBiz.findAllNewCourse();
			} else {
				list = this.courseBiz.findAllCourse();
			}

			return gson.toJson(list);
		}
		// model.addAttribute("course",this.courseBiz.findAllCourse());
		if (rang == -1 || "-1".equals(rang)) {// 最热排行
			list = this.courseBiz.findOneCategoryHotCourse(course);
		} else if (rang == -2 || "-2".equals(rang)) {
			list = this.courseBiz.findOneCategoryNewCourse(course);
		} else {
			list = this.courseBiz.findOneCategoryCourse(course);
		}
		return gson.toJson(list);
	}

	// topb的跳转到指定类型的课程页面
	@RequestMapping(value = "/getCourseInformation.action/{class_id}")
	public String getCategoryCourseInformation(Model model, HttpServletResponse response, Course course,
			@PathVariable int class_id) throws IOException {
		Gson gson = new Gson();
		course.setClass_id(class_id);
		List<Course> list = this.courseBiz.findOneCategoryCourse(course);
		if (list.size() > 0) {
			model.addAttribute("course", gson.toJson(list).toString());
			model.addAttribute("courses", list);
			model.addAttribute("class_id", list.get(0).getClass_id());
		}

		return "page/course";
	}

	// 所有课程
	@RequestMapping(value = "/getAllCourseInformation.action")
	public String getAllCourseInformation(Model model) {
		System.out.println("getAllCourseInformation...........");
		Gson gson = new Gson();
		List<Course> list = this.courseBiz.findAllCourse();
		// System.out.println(gson.toJson(list).toString());
		String x = String.valueOf(gson.toJson(list).toString());
		model.addAttribute("course", x);
		model.addAttribute("courses", list);
		if (!model.containsAttribute("category")) {
			model.addAttribute("category", this.categoryBiz.findAllCategory());
		}
		model.addAttribute("class_id", 0);
		return "page/course";
	}

	/**
	 * 跳转到具体的某一门课程的学习界面
	 * 
	 * @param model
	 * @throws IOException
	 */
	@RequestMapping(value = "/getOneCourseInformation.action/{course_id}")
	public String getOneCourseInformation(HttpSession session, Model model, @PathVariable int course_id, Course course)
			throws IOException {
		course.setCourse_id(course_id);
		System.out.println(course);
		Course courses = this.courseBiz.findOneCourse(course);
		model.addAttribute("onecourse", courses);

		session.setAttribute("onecourseforjoin", courses);
		// 评论的总数
		List<StudyCourse> list = this.studyCourseBiz.studyCourseOfassess(course);
		double grade = 0; // 评论级别 一星 二星 .....
		for (StudyCourse sc : list) {
			if (sc.getAssess() != null) {
				grade += Integer.parseInt(sc.getAssess());
			}
		}
		if (list.size() > 0) {
			grade = grade / list.size();
		}
		model.addAttribute("assessCount", list.size());
		model.addAttribute("assessGrade", grade);
		// 学习人数
		model.addAttribute("all_study", this.studyCourseBiz.studyCourseOfCourse(course));
		// 关注人数
		model.addAttribute("stu_count", this.courseBiz.findAttentionCount(course));
		// 课时
		model.addAttribute("class_hour", this.courseBiz.findAllcourseseq(course));
		// 最新评论
		Map<String, Object> map = new HashMap<>();
		map.put("course", course);
		map.put("starpage", 0);
		map.put("page", CourseAssess.num);
		model.addAttribute("assess", this.courseAssessBiz.findAssessBycourseid(map));
		// 最新笔记
		model.addAttribute("notes", this.studyCourseBiz.getNoteByCourser_id(map));
		return "page/joinproject";

	}

	// 课程类
	@ResponseBody
	@RequestMapping(value = "/getCategoryInformation.action")
	public List<Class_category> getCategoryInformation(Model model) throws IOException {
		List<Class_category> list = this.categoryBiz.findAllCategory();
		model.addAttribute("category", list);
		return list;
	}

	// 把title传过去
	@RequestMapping(value = "course/sendtitle")
	public void sendtitle(PrintWriter out, String coursename, HttpSession session) {
		System.out.println(coursename);
		session.setAttribute("ctitle", coursename);
		out.print(1);
		out.flush();
		out.close();
	}

	// 到manage
	@RequestMapping(value = "course/manage.action")
	public String showmanage(Model model) {
		List<Class_category> categories = this.courseBiz.getAllCategories();
		model.addAttribute("categories", categories);
		return "page/manage";
	}

	// 进入添加课程页面
	@RequestMapping(value = "course/lession.action")
	public String show1() {
		return "page/lesson";
	}

	;
	// 到manage
	// @RequestMapping(value="/joinproject.action")
	// public String toJoinproject(){
	// return "page/joinproject";
	// }

	// 添加基本课程信息
	@RequestMapping("course/basic")
	public void savebasic(Class_category class_category, PrintWriter out, String course_name, String course_description,
			int class_id, String courseting, BigDecimal price, HttpSession session) {

		class_category.setClass_id(class_id);

		Class_category class_categorys = this.courseBiz.findbycalss_id(class_id);// 根据id课程类

		// System.out.println(class_categorys);

		session.setAttribute("course_name", course_name);
		session.setAttribute("course_description", course_description);
		session.setAttribute("class_id", class_id);
		session.setAttribute("courseting", courseting);
		session.setAttribute("price", price);
		session.setAttribute("basicstatus", "1");
		session.setAttribute("Class_category", class_categorys);
		if (course_description == null && "".equals(course_description)) {
			out.print(1);
		} else if (class_id <= 0) {
			out.print(2);
		} else if (courseting == null && "".equals(courseting)) {
			out.print(3);
		} else {
			out.print(4);
		}
		out.flush();
		out.close();
	}

	// 到picture
	@RequestMapping(value = "course/picture.action")
	public String toPicture() {
		return "page/picture";
	}

	// 上传头像带插入数据库
	@ResponseBody
	@RequestMapping("course/editor.action")
	public Object uploadApk(@RequestParam(value = "upload-file") MultipartFile apkFile, HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, Object> resMap = new HashMap<String, Object>();
		String str = "";
		if (apkFile != null) {
			// 获取保存的路径，
			String realPath = request.getServletContext().getRealPath("../img/headimg");
			if (apkFile.isEmpty()) {
				System.out.println("yes");
				// 未选择文件
			} else {
				System.out.println("yes");
				// 文件原名称
				String originFileName = apkFile.getOriginalFilename();
				long temp = System.currentTimeMillis() + new Random().nextInt(100000);
				str = temp + originFileName.substring(originFileName.indexOf("."));
				System.out.println(originFileName);
				try {
					// 这里使用Apache的FileUtils方法来进行保存
					FileUtils.copyInputStreamToFile(apkFile.getInputStream(), new File(realPath, str));
				} catch (IOException e) {
					System.out.println("文件上传失败");
					e.printStackTrace();
				}
			}
		}
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("coursephoto", str);
		session.setAttribute("picturestatus", 1);
		if (str != null) {
			Course course = new Course();
			String course_name = (String) session.getAttribute("course_name");
			String course_description = (String) session.getAttribute("course_description");
			Class_category class_category = (Class_category) session.getAttribute("Class_category");
			int class_id = class_category.getClass_id();
			String courseting = (String) session.getAttribute("courseting");
			BigDecimal price = (BigDecimal) session.getAttribute("price");
			UserInfo user = (UserInfo) session.getAttribute("users");
			course.setCourse_name(course_name);
			course.setClass_id(class_id);
			course.setCourse_description(course_description);
			course.setCourseting(courseting);
			course.setPrice(price);
			course.setCoursephoto("../img/headimg/" + str);
			course.setUserInfo(user);
			Course courses = this.courseBiz.save(course);

			TeachCourse teachCourse = new TeachCourse();
			teachCourse.setUserInfo(user);
			teachCourse.setCourse(courses);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String date = sdf.format(new Date());
			teachCourse.setTeachPeriod(date);
			teachCourse.setAssess(null);
			this.teachCourseBiz.addTeachCourse(teachCourse);
			resMap.put("filename", str);
		}

		return resMap;
	}

	@RequestMapping("course/addlession.action")
	public void addlession(Class_hour class_hour, int type, String title, String introduction, String content,
			PrintWriter out, HttpSession session, HttpServletRequest request) {

		System.out.println(introduction);

		Course course = this.courseBiz.findcourse_id();
		int course_id = course.getCourse_id();
		System.out.println(course_id);

		Class_hour list = this.courseBiz.findcourseseq(course);
		Integer courseseqs = null;
		if (list != null && !"".equals(list)) {
			courseseqs = list.getCourseseq();
		}

		// System.out.println(courseseqs);
		// String courseseqs=list.toString().substring(0,1);
		// System.out.println(courseseqs);

		if (courseseqs == null) {
			int courseseq = 1;
			System.out.println(courseseq);
			class_hour.setCourseseq(courseseq);
			session.setAttribute("courseseq", courseseq);
		} else {
			int courseseq = courseseqs + 1;
			System.out.println(courseseq);
			class_hour.setCourseseq(courseseq);
			session.setAttribute("courseseq", courseseq);
		}
		class_hour.setTitle(title);
		class_hour.setType(type);
		class_hour.setContent(content);
		class_hour.setIntroduction(introduction);
		class_hour.setCourse(course);
		System.out.println(class_hour);
		int result = this.courseBiz.addlession(class_hour);

		Gson gson = new Gson();
		String cs = gson.toJson(class_hour);
		if (result > 0) {
			out.print(cs);
			session.setAttribute("cousefordeltete", course);
			session.setAttribute("addlessions", 1);
			session.setAttribute("cManage", class_hour);
		}
		out.flush();
		out.close();
	}

	@RequestMapping("course/findAllcourseseq.action")
	public void findAllcourseseq(PrintWriter out, HttpSession session) {
		Class_hour nowcourse_hour = (Class_hour) session.getAttribute("cManage");
		if (nowcourse_hour != null) {
			// String
			// courseids=String.valueOf(nowcourse_hour.getCourse().getCourse_id());
			Course course = nowcourse_hour.getCourse();
			// System.out.println(courseids);

			// int course_id=Integer.parseInt(courseids);
			List<Class_hour> class_hour = this.courseBiz.findAllcourseseq(course);
			System.out.println(class_hour);
			if (class_hour != null) {
				Gson gson = new Gson();
				String courseManages = gson.toJson(class_hour);
				out.print(courseManages);
			}
			out.flush();
			out.close();
		} else {
			out.print(0);
		}
	}

	@RequestMapping("course/deletelession.action")
	public void deletelesson(Class_hour class_hour, int courseseq, PrintWriter out, HttpSession session,
			HttpServletRequest request) {
		Course course = (Course) session.getAttribute("cousefordeltete");
		class_hour.setCourseseq(courseseq);
		class_hour.setCourse(course);
		int result = this.courseBiz.deletelesson(class_hour);
		Gson gson = new Gson();
		String cs = gson.toJson(class_hour);
		if (result > 0) {
			out.print(cs);
			session.setAttribute("addlessions", 1);
			session.setAttribute("cManage", class_hour);
		}
		out.flush();
		out.close();
	}

	// 获取某一门课程的所有课时
	@ResponseBody
	@RequestMapping(value = "/findClasshourBycourseid.action")
	public String getNoteByClass_hour_id(Course course) throws IOException {
		Gson gson = new Gson();
		List<Class_hour> list = this.courseBiz.findAllcourseseq(course);
		return gson.toJson(list);

	}

	// 获取某一门课程的所有笔记
	@RequestMapping(value = "/findNoteByCourser_id.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String getNoteByCourser_id(Course course,
			@RequestParam(value = "starpage", required = false) String starpage) throws IOException {
		Gson gson = new Gson();
		Map<String, Object> map = new HashMap<>();
		map.put("course", course);
		map.put("starpage", Integer.valueOf(starpage));
		map.put("page", Notes.NOTESPAGE);
		map.put("notes", this.studyCourseBiz.getNoteByCourser_id(map));
		map.put("count", this.studyCourseBiz.getCountByCourser_id(map));
		return gson.toJson(map);

	}

	// 获取某一门课程的所有学习人员
	@RequestMapping(value = "/findstudentByCourser_id.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String findstudentByCourser_id(Course course) throws IOException {
		Gson gson = new Gson();
		Map<String, Object> map = new HashMap<>();
		map.put("course", course);
		map.put("page", Notes.NOTESPAGE);
		map.put("student", this.userInfoBiz.getUserInfoByCourseid(course));

		return gson.toJson(map);

	}

	// 评价课程
	@RequestMapping(value = "/toPingjiaCourse.action", produces = "text/html;charset=UTF-8")
	public @ResponseBody String toPingjiaCourse(StudyCourse scourse, Course course, UserInfo userInfo) {
		scourse.setCourse(course);
		scourse.setUserInfo(userInfo);
		System.out.println(scourse);
		Gson gson = new Gson();
		if (scourse.getAssess().equals("1") || scourse.getAssess().equals("2") || scourse.getAssess().equals("3")
				|| scourse.getAssess().equals("4") || scourse.getAssess().equals("5")) {

			try {
				Integer x=this.studyCourseBiz.pinglunCourse(scourse);
				if(x<=0||x==null){
					return gson.toJson("false1");
				}
			} catch (Exception e) {
				e.printStackTrace();
				return gson.toJson("false1");
			}

			return gson.toJson("true");
		}
		return gson.toJson("false2");
	}

	// 加载时判断课程是否已经
	@RequestMapping("courseStudy/findCourse.action")
	public void findCourse(int user_id, PrintWriter out, HttpSession session) {

		Course course = (Course) session.getAttribute("onecourseforjoin");
		UserInfo users = new UserInfo();
		users.setUser_id(user_id);

		StudyCourse studyCourse = new StudyCourse();
		studyCourse.setCourse(course);
		studyCourse.setUserInfo(users);
		StudyCourse a = this.studyCourseBiz.getOneCourseCount(studyCourse);
		if (a != null) {
			out.println(1);
		} else {
			out.print(0);
		}

	}

	// 加入课程
	@RequestMapping("course/joinCourse")
	public void joinCourse(PrintWriter out, HttpSession session, int user_id) {
		// 课程
		Course course = (Course) session.getAttribute("onecourseforjoin");

		int course_id = course.getCourse_id();
		// 价格
		BigDecimal money = course.getPrice();

		// 系统时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
		String date = sdf.format(new Date());

		UserInfo users = new UserInfo();
		users.setUser_id(user_id);
		// 用户
		UserInfo userInfo = userInfoBiz.getUserPicByUserid(users);
		session.setAttribute("userInfoByStudyCourse", userInfo);
		// 实现账户余额更改
		Account account = new Account();
		account.setStu_user(userInfo);
		Account accounts = this.accountBiz.selectBalance(account);
		if (accounts.getBalance().intValue() > money.intValue()) {
			account.setBalance(accounts.getBalance().subtract(money));
			this.accountBiz.addBalance(account);

			// 扣费成功实现加入课程
			StudyCourse studyCourse = new StudyCourse();
			studyCourse.setUserInfo(userInfo);
			studyCourse.setCourse(course);
			studyCourse.setBegintime(date);
			studyCourse.setAssess("0");
			int result = this.studyCourseBiz.addStudyCourse(studyCourse);

			if (result > 0) {
				out.print(3);

				// 添加账户记录
				AccountNotes accountNotes = new AccountNotes();
				BigDecimal moneys = new BigDecimal("0");
				BigDecimal price = moneys.subtract(money);

				accountNotes.setUser_id(user_id);
				accountNotes.setMoney(price);
				accountNotes.setPayment("quickpay");
				accountNotes.setTimes(date);
				this.accountNotesBiz.addnotes(accountNotes);

			} else {
				out.print(2);
			}

		} else {
			out.println(1);
		}
		out.flush();
		out.close();
	}

}
