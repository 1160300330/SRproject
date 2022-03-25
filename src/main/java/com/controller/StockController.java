package com.controller;

import com.pojo.StockIDName;
import com.pojo.StockInfo;
import com.pojo.StockNameID;
import com.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/stock")
public class StockController {
    @Autowired
    private StockService stockService;
    @Autowired
    private StockNameID stockNameID;
    @Autowired
    private StockIDName stockIDName;

    @RequestMapping(value="/stockHistory")
    public String listStockHistory(Model model,@RequestParam("StockID")String StockID) {
        List<StockInfo> list;
        System.out.println(StockID);
        list = stockService.queryAll(StockID);//参数
        model.addAttribute("list", list);
        model.addAttribute("id",StockID);
        return "stock/stockHistory";
    }

    @RequestMapping(value = "/queryByIDDate")
    public String QueryByIDDate(Model model,@RequestParam("StockID")String StockID, @RequestParam("StartDate")String t1,
                                @RequestParam("EndDate")String t2)
    {

        return "";
    }
    @RequestMapping(value = "/queryByIDNum")
    public String QueryByIDNum(Model model,@RequestParam("StockID")String StockID, @RequestParam("Rows")int limit)
    {
        List<StockInfo> list;
        list = stockService.queryByNum(StockID,limit);//参数
        model.addAttribute("list", list);
        model.addAttribute("id",StockID);
        model.addAttribute("limit",limit);
        model.addAttribute("Name",stockIDName.getMap().get(StockID));
        return "stock/stockHistory";
    }
    @RequestMapping(value = "/queryByNameDate")
    public String QueryByNameDate(Model model,@RequestParam("StockName")String StockName, @RequestParam("StartDate")String t1,
                                  @RequestParam("EndDate")String t2)
    {
        return "";
    }

    @RequestMapping(value = "/queryByNameNum")
    public String QueryByNameNum(Model model,@RequestParam("StockName")String StockName, @RequestParam("Rows")int limit)
    {
        return "";
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
