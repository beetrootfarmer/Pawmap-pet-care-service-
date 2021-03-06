package com.pawmap.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import com.pawmap.VO.Criteria;
import com.pawmap.VO.UserVO;


@Mapper
public interface UserMapper {
	//일반 회원 가입
	void insertUser(UserVO vo);
	
	//병원 회원 가입
	void insertHospitalUser(UserVO vo);
	
	//제휴 병원 hospital_data 테이블에 삽입
	void insertHospitalData(UserVO vo);
	
	 UserVO findByUsername(String username);
	 
	void socialJoin(UserVO vo);
	
	// 아이디 중복 검사
	public int idCheck(String id);
	
	// 닉네임 중복 검사
	public int nickCheck(String nickname);
	
	// 이메일 중복 검사
	public int emailCheck(String email);
	
	// 사업자등록번호 중복 검사
	public int comCheck(String comnum);

	//아이디 찾기 
	String searchId(@Param("userName")String userName, @Param("userTelNum")String userTelNum);


	public UserVO findByLoginId(@Param("userId") String userId);

	public UserVO checkDuplicateId(@Param("id") int userId);
	
	UserVO checkIdPwd(String userId, String userPasswd);

	public UserVO searchPwd(@Param("userId")String userId, @Param("userName")String userName, @Param("userEmail")String userEmail);

	public void changePwd(@Param("userId")int userId, @Param("userPassword")String userPasswd);
	
	//public void update(UserVO user);
	public void update(UserVO vo);


	//회원정보 수정 메서드
	public void updateUser(UserVO vo);

	//회원정보 삭제 메서드
	public void deleteUser(UserVO vo);
	
	//회원리스트 가져오는 메서드
	public List<UserVO> getUserList(UserVO vo);
	
	//병원 유저 리스트 가져오는 메서드
	public List<UserVO> getHospitalUserList(UserVO vo);

	//특정 유저 정보 가져오는 메서드
	public UserVO getUser(UserVO vo);
	
	//관리자 페이지 수정 메서드
	public void updateUserAdmin(UserVO vo);
	public UserVO searchPwd(@Param("userId")String userId, @Param("userName")String userName);


	//페이징 처리 메서드 (일반유저)
	public List<UserVO> getUserListWithPaging(Criteria cri);
	
	//페이징 처리 메서드 (병원유저)
	public List<UserVO> getHospitalUserListWithPaging(Criteria cri);
	
	//유저 카운트
	public int getUserCount();
	
	//병원 유저 카운트
	public int getHospitalUserCount();

	void updateUserProfileNull(@Param("userSeq") int userSeq,@Param("userType") String userType,@Param("userId") String userId);


}