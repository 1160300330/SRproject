package com.controller;

import com.pojo.StockInfo;
import com.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/stock")
public class StockController {
    @Autowired
    private StockService stockService;

    @RequestMapping(value="/stockHistory")
    public String listStockHistory(Model model,HttpServletRequest request,@RequestParam("StockID")String StockID) {
        List<StockInfo> list;
        System.out.println(StockID);
        list = stockService.queryAll(StockID);//参数
        model.addAttribute("list", list);
        model.addAttribute("id",StockID);
        return "stock/stockHistory";
    }

    @RequestMapping("/realtimeStock")
    public String listRealtimeStock() {
        return "stock/realtimeStock";
    }

    @RequestMapping("/allStock")
    public String listAllStock() {
        return "stock/allStock";
    }

    @RequestMapping("/stock")
    public String toStockPage() {

        return "stock/stockPage";
    }
}
