package com.saraya.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.saraya.model.UserModal.Privilege;
import com.saraya.model.UserModal.Role;

@Service
public class UserService {
	private static ArrayList<UserModal> users= new ArrayList<UserModal>();
	static {
		users.add(new UserModal("babacar@1994", "babacar",Role.CLIENT));
		users.add(new UserModal("khalifa@1994", "khalifa",Role.STAFF));
		users.add(new UserModal("mansour@1994", "mansour",Role.CLIENT));
		users.add(new UserModal("omar@1994", "omar",Role.CLIENT));
		users.add(new UserModal("lamine@1994", "lamine",Role.ADMIN));
		users.add(new UserModal("bamba@1994", "bamba",Role.STAFF));
		users.add(new UserModal("khadija@1994", "khadijar",Role.CLIENT));
		users.add(new UserModal("abdou@1994", "abdou",Role.STAFF));
		users.add(new UserModal("astou@1994", "astou",Role.CLIENT));
		users.add(new UserModal("dabbakh@1994", "dabbakh",Role.CLIENT));
		users.add(new UserModal("ass@1994", "ass",Role.ADMIN));
		users.add(new UserModal("fatima@1994", "fatima",Role.STAFF));
	}
	
	public ArrayList<UserModal> getUserList() {
		return users;
	}
	public UserModal findUser(String username) {
		for(UserModal user: users) {
			if(user.getUsername()==username) {
				return user;
			}
		}
		return null;
	}
	
	public void deleteAccount(String username) {
		UserModal user = findUser(username);
		users.remove(user);
	}
	
	public void updtaeRole(String username, String profil) {
		UserModal user= findUser(username);
		Role role = Role.valueOf(profil);
		user.setRole(role);
	}
	public List<Privilege> privilegeList(Role role){
		 
		switch(role) {
			case ADMIN : return List.of(Privilege.ADD,Privilege.READ,Privilege.UPDATE,Privilege.DELETE);
			
			case STAFF: return List.of(Privilege.ADD,Privilege.READ,Privilege.UPDATE);
			
			case CLIENT: return List.of(Privilege.ADD,Privilege.READ);
			
		}
		return null;
	
	}
//	public void updtaePassword(String username, String password) {
//	UserModal user= findUser(username);
//	user.setPassword(password);
//}

}
