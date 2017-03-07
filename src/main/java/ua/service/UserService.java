package ua.service;


import java.security.Principal;
import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import ua.dto.filter.BasicFilter;
import ua.entity.User;

public interface UserService {
	void save(User user);
	 User findByUsername(String username);
	 public int getUserId(Principal principal);
	 void addItem(int Id, Principal principal);
	 void deleteItems(int id,  Principal principal);
	 List<User> findAll();
	 Set<User> findByCart();
	
	 Page<User> findAll(BasicFilter filter, Pageable pageable);
	 void deleteSetUsers( Principal principal);
	 void deleteUserCart(int id );
	 User findOne(int id);
}
