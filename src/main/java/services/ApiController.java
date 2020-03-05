package services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import dao.PersonDAO;

/** https://dzone.com/articles/deploying-spring-apps-to-tomcat-without-webxml */
@RestController
@RequestMapping("/api/persons")
public class ApiController {
	@Autowired
	PersonDAO personDao;

	/** 1 or 2 brackets **/
	@GetMapping
	public ResponseEntity<?> getPersons() {
		return ResponseEntity.ok(personDao.getPersons());
	}
}