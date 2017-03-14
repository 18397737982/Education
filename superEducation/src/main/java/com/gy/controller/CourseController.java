package com.gy.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
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
import com.gy.beans.Class_category;
import com.gy.beans.Class_hour;
import com.gy.beans.Course;
import com.gy.beans.UserInfo;
import com.gy.biz.CategoryBiz;
import com.gy.biz.CourseBiz;
import com.gy.biz.UserInfoBiz;

@Controller
@SessionAttributes({ "category", "class_id" }) // ①将ModelMap中属性名为users的属性
public class CourseController {

	private CourseBiz courseBiz;
	private CategoryBiz categoryBiz;

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
//		System.out.println(gson.toJson(list).toString());
		String x=String.valueOf(gson.toJson(list).toString());
		model.addAttribute("course",x);
		model.addAttribute("courses",list);
		if (!model.containsAttribute("category")) {
			model.addAttribute("category", this.categoryBiz.findAllCategory());
		}
		model.addAttribute("class_id", 0);
		return "page/course";
	}

	// 课程类
	@RequestMapping(value = "getCategoryInformation.action", produces = "text/html;charset=UTF-8")
	public void getCategoryInformation(Model model) throws IOException {
		model.addAttribute("category", this.categoryBiz.findAllCategory());
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
			int class_id, String courseting, HttpSession session) {

		class_category.setClass_id(class_id);
		Class_category class_categorys = this.courseBiz.findbycalss_id(class_id);// 根据id课程类
		// System.out.println(class_categorys);

		session.setAttribute("course_name", course_name);
		session.setAttribute("course_description", course_description);
		session.setAttribute("class_id", class_id);
		session.setAttribute("courseting", courseting);
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

		System.out.println("yesyse");
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("coursephoto", str);
		session.setAttribute("picturestatus", 1);
		if (str != null) {
			Course course = new Course();
			String course_name = (String) session.getAttribute("course_name");
			String course_description = (String) session.getAttribute("course_description");
			int class_id = (int) session.getAttribute("class_id");
			String courseting = (String) session.getAttribute("courseting");
			UserInfo user = (UserInfo) session.getAttribute("users");

			course.setCourse_name(course_name);
			course.setClass_id(class_id);
			course.setCourse_description(course_description);
			course.setCourseting(courseting);
			course.setCoursephoto("../img/headimg/" + str);
			course.setUserInfo(user);
			System.out.println(course.toString());

			Course courses = this.courseBiz.save(course);
			resMap.put("filename", str);
		}

		System.out.println("yes");
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

}
