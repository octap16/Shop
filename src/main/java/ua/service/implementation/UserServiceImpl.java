package ua.service.implementation;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.dto.filter.BasicFilter;
import ua.entity.Item;
import ua.entity.Role;
import ua.entity.User;
import ua.repository.ItemRepository;
import ua.repository.UserRepository;
import ua.service.UserService;
import ua.service.specification.UserSpecification;

@Service("userDetailsService")
public class UserServiceImpl implements UserDetailsService, UserService {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ItemRepository itemRepository;
	@Autowired
	private BCryptPasswordEncoder encoder;

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		return userRepository.findByUsername(username);
	}

	@Override
	public void save(User user) {

		user.setPhoneNumber(user.getPhoneNumber());
		user.setPassword(encoder.encode(user.getPassword()));
		user.setRole(Role.ROLE_USER);
		userRepository.save(user);
	}

	@PostConstruct
	public void admin() {
		User user = userRepository.findByUsername("admin");
		if (user == null) {
			user = new User();
			user.setEmail("");
			user.setPhoneNumber("0");
			user.setPassword(encoder.encode("admin"));
			user.setRole(Role.ROLE_ADMIN);
			user.setUsername("admin");
			userRepository.save(user);
		}
	}

	@Override
	public User findByUsername(String username)
			throws UsernameNotFoundException {
		return userRepository.findByUsername(username);
	}

	@Override
	public int getUserId(Principal principal) {

		String name = principal.getName();
		User user = findByUsername(name);
		return user.getId();
	}

	@Override
	@Transactional
	public void addItem(int Id, Principal principal) {
		Item item = itemRepository.findOne(Id);
		String name = principal.getName();
		User user = findByUsername(name);
		user.getItems().add(item);
		userRepository.save(user);
		System.out.println(name + Id);
		System.out.println(user.getItems());
		System.out.println(user.getItems().isEmpty());

	}


	@Override
	public Page<User> findAll(BasicFilter filter, Pageable pageable) {
		return userRepository.findAll(new UserSpecification(filter), pageable);
	}
	

	@Override
	public User findOne(int id) {
		return userRepository.findOne(id);
	}

	@Override
	@Transactional
	public void deleteItems(int id, Principal principal) {
		String name = principal.getName();
		User user = findByUsername(name);
		user.getItems().removeIf(s -> s.getId() == id);

		userRepository.save(user);
	}
	

	@Override
	public List<User> findAll() {
		return userRepository.findAll();
	}
	@Override
	public Set<User> findByCart() {
		List<User> users = findAll();
		Set<User> cartUsers = new HashSet<User>();
		for (User user : users) {
			if (user.getItems().size() > 0)
				cartUsers.add(user);
		}
		
		return cartUsers;
	}
	
	@Override
	@Transactional
	public void deleteSetUsers(Principal principal) {
		String name = principal.getName();
		User user = findByUsername(name);
		if(user.getItems().size()==0){
			Set<User> cartUsers = findByCart();
			cartUsers.remove(user);
		}	
	}
	@Override
	public void deleteUserCart(int id) {
		User user = findOne(id);
		Set<User> cartUsers = findByCart();
		user.getItems().clear();
		cartUsers.remove(user);
		userRepository.save(user);
		System.out.println(user);
	}
}