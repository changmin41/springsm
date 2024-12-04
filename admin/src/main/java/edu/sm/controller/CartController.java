package edu.sm.controller;

import edu.sm.app.dto.CartDto;
import edu.sm.app.service.CartService;
import edu.sm.app.service.ItemService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cart")
@RequiredArgsConstructor
@Slf4j
public class CartController {

    private final CartService cartService; // CartService 주입
    private final ItemService itemService;
    String dir = "cart/"; // Cart 관련 템플릿 경로

    // 장바구니 아이템 추가 폼
    @RequestMapping("/add")
    public String add(Model model) throws Exception {
        model.addAttribute("center", dir + "add"); // "cart/add" 뷰를 렌더링
        return "index";
    }


    // 장바구니 아이템 추가 처리
    @RequestMapping("/addimpl")
    public String addimpl(Model model, CartDto cartDto) throws Exception {
        cartService.add(cartDto); // 장바구니에 아이템 추가
        return "index";
    }

    // 장바구니 목록 보기
    @RequestMapping("/get")
    public String get(Model model) throws Exception {
        List<CartDto> list = new ArrayList<>();
        list = cartService.get();
        model.addAttribute("cartlist", list);
        model.addAttribute("center", dir + "get"); // "cart/get" 뷰를 렌더링
        return "index";
    }




    // 장바구니 아이템 상세 보기
    @RequestMapping("/detail")
    public String detail(Model model, @RequestParam("cartUserId") String cartUserId, @RequestParam("cartItemId") int cartItemId) throws Exception {
        CartDto cartDto = new CartDto();
        cartDto.setCartUserId(cartUserId);
        cartDto.setCartItemId(cartItemId);
        CartDto cart = cartService.get(cartDto); // 특정 장바구니 아이템 가져오기
        model.addAttribute("cart", cart);
        model.addAttribute("center", dir + "detail"); // "cart/detail" 뷰를 렌더링
        return "index";
    }

    // 장바구니 아이템 수정 처리
    @RequestMapping("/update")
    public String update(Model model, CartDto cartDto) throws Exception {
        cartService.modify(cartDto); // 장바구니 아이템 수정
        return "index";
    }

    // 장바구니 아이템 삭제 처리
    @RequestMapping("/delete")
    public String delete(Model model, @RequestParam("cartUserId") String cartUserId, @RequestParam("cartItemId") int cartItemId) throws Exception {
        CartDto cartDto = new CartDto();
        cartDto.setCartUserId(cartUserId);
        cartDto.setCartItemId(cartItemId);
        cartService.del(cartDto); // 장바구니 아이템 삭제
        return "index";
    }


    // 이름으로 장바구니 아이템 검색
    @RequestMapping("/search")
    public String search(Model model, @RequestParam("itemName") String itemName, @RequestParam("cartUserId") String cartUserId) throws Exception {
        CartDto cartDto = new CartDto();
        cartDto.setItemName(itemName);
        cartDto.setCartUserId(cartUserId);
        List<CartDto> searchResults = cartService.findByName(cartDto); // 이름으로 검색된 결과
        model.addAttribute("cartlist", searchResults);
        model.addAttribute("center", dir + "get"); // 검색된 결과를 "cart/get" 뷰로 렌더링
        return "index";
    }


}

