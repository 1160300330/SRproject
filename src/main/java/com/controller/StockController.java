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
import java.sql.Date;
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
        list = stockService.queryAll(StockID);//参数
        model.addAttribute("list", list);
        model.addAttribute("id",StockID);
        return "stock/stockHistory";
    }

    @RequestMapping(value = "/queryByIDDate")
    public String QueryByIDDate(Model model,@RequestParam("StockID")String StockID, @RequestParam("StartDate")String t1,
                                @RequestParam("EndDate")String t2)
    {
        List<StockInfo> list;
        list = stockService.queryByTime(StockID,t1,t2);
        model.addAttribute("list", list);
        model.addAttribute("id",StockID);
        model.addAttribute("Name",stockIDName.getMap().get(StockID));
        return "stock/stockHistory";
    }
    @RequestMapping(value = "/queryByIDNum")
    public String QueryByIDNum(Model model,@RequestParam("StockID")String StockID, @RequestParam("Rows")int limit)
    {
        List<StockInfo> list;
        list = stockService.queryByNum(StockID,limit);//参数
        model.addAttribute("list", list);
        model.addAttribute("id",StockID);
        model.addAttribute("Name",stockIDName.getMap().get(StockID));
        return "stock/stockHistory";
    }
    @RequestMapping(value = "/queryByNameDate")
    public String QueryByNameDate(Model model,@RequestParam("StockName")String StockName, @RequestParam("StartDate") String t1,
                                  @RequestParam("EndDate")String t2)
    {
        List<StockInfo> list;
        list = stockService.queryByTime(stockNameID.getMap().get(StockName),t1,t2);
        model.addAttribute("list", list);
        model.addAttribute("id",stockNameID.getMap().get(StockName));
        model.addAttribute("Name",StockName);
        return "stock/stockHistory";
    }

    @RequestMapping(value = "/queryByNameNum")
    public String QueryByNameNum(Model model,@RequestParam("StockName")String StockName, @RequestParam("Rows")int limit)
    {
        List<StockInfo> list;
        list = stockService.queryByNum(stockNameID.getMap().get(StockName),limit);//参数
        model.addAttribute("list", list);
        model.addAttribute("Name",StockName);
        model.addAttribute("limit",limit);
        model.addAttribute("id",stockNameID.getMap().get(StockName));
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
