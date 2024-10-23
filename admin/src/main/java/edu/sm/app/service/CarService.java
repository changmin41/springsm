package edu.sm.app.service;

import edu.sm.app.dto.CarDto;
import edu.sm.app.dto.ItemDto;
import edu.sm.app.frame.SMService;
import edu.sm.app.repository.CarRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CarService implements SMService<Integer, CarDto> {

    final CarRepository carRepository;

    @Override
    public void add(CarDto carDto) throws Exception {
        carRepository.insert(carDto);
    }

    @Override
    public void modify(CarDto carDto) throws Exception {
        carRepository.update(carDto);
    }

    @Override
    public void del(Integer s) throws Exception {
        carRepository.delete(s);
    }

    @Override
    public CarDto get(Integer s) throws Exception {
        return carRepository.selectOne(s);
    }

    @Override
    public List<CarDto> get() throws Exception {
        return carRepository.select();
    }

    // 검색어로 차량 목록을 검색하는 메서드
    public List<CarDto> findByName(String name) throws Exception {
        return carRepository.findByName(name);
    }


}