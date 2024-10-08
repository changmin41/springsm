package edu.sm.cust.service;

import edu.sm.cust.repository.CustRepository;
import edu.sm.dto.Cust;
import edu.sm.frame.SMRepository;
import edu.sm.frame.SMService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service("cservice") // Service라는 컨퍼넌트(요소)로써 spring이 인식한다.
public class CustService implements SMService<String, Cust> {
    @Autowired // SMRepository타입의 객체를 찾아서 자동적으로
    SMRepository<String, Cust> repository;

    public CustService(){
        repository = new CustRepository();
    }

    @Override
    public void register(Cust cust) {

        repository.insert(cust);
    }

    @Override
    public void modify(Cust cust) {
        repository.update(cust);
    }

    @Override
    public void remove(String s) {
        repository.delete(s);
    }
}
