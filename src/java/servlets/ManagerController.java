package servlets;

import entity.Cover;
import entity.CoverProduct;
import entity.History;
import entity.Product;
import entity.User;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.ProductFacade;
import session.HistoryFacade;
import session.BuyerFacade;
import session.CoverFacade;
import session.CoverProductFacade;
import session.UserRolesFacade;
import utils.DateUtils;
import utils.Encription;
import utils.PagePathLoader;
import utils.SortUtils;

/**
 *
 * @author jvm
 */
@WebServlet(name = "ManagerController", urlPatterns = {
    "/showAddNewProduct",
    "/addNewProduct",
    "/showAddNewBuyer",
    "/addNewBuyer",
    "/showUploadFile",
    "/showReturnPizza",
    "/returnPizza",
    "/showStatistic"
    
    
    
    
})
public class ManagerController extends HttpServlet {
    @EJB private ProductFacade productFacade;
    @EJB private BuyerFacade buyerFacade;
    @EJB private HistoryFacade historyFacade;
    @EJB private UserRolesFacade userRolesFacade;
    @EJB private CoverFacade coverFacade;
    @EJB private CoverProductFacade coverProductFacade;
    
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        Encription encription = new Encription();
        Calendar c = new GregorianCalendar();
        String path = request.getServletPath();
        HttpSession session = request.getSession(false);
        if(session == null){
            request.setAttribute("info", "Войдите!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
        }
        User regUser = (User) session.getAttribute("regUser");
        if(regUser == null){
            request.setAttribute("info", "Войдите!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
        }
        Boolean isRole = userRolesFacade.isRole("MANAGER", regUser);
        if(!isRole){
            request.setAttribute("info", "Вы должны быть менеджером!");
            request.getRequestDispatcher("/showLogin").forward(request, response);
        }
        if(null != path) switch (path) {
            case "/showAddNewProduct":
                List<Cover> listCovers = coverFacade.findAll();
                request.setAttribute("listCovers", listCovers);
                request.getRequestDispatcher(PagePathLoader.getPagePath("showAddNewProduct")).forward(request, response);
                break;
            case "/addNewProduct":
                String name = request.getParameter("name");
                String count = request.getParameter("count");
                String price = request.getParameter("price");
                Product product = new Product(new Integer(price), name, new Integer(count));
                productFacade.create(product);
                String coverId = request.getParameter("coverId");
                Cover cover = coverFacade.find(new Long(coverId));
                CoverProduct coverProduct = new CoverProduct(product, cover);
                coverProductFacade.create(coverProduct);
                request.setAttribute("info", "Пицца \""+product.getName()+"\"добавлена");
                request.getRequestDispatcher("/showAddNewProduct").forward(request, response);
                request.getRequestDispatcher(PagePathLoader.getPagePath("managerIndex")).forward(request, response);
                request.setAttribute("info", "Продукт \""+product.getName()+"\"добавлен");
                request.getRequestDispatcher("/showAddNewProduct").forward(request, response);
                break;
            case "/showAddNewBuyer":
                request.getRequestDispatcher(PagePathLoader.getPagePath("showAddNewBuyer")).forward(request, response);
                break;
<<<<<<< HEAD
=======
                
>>>>>>> 0fcf8fe5cbbd48cb0530d41c6c82bffe99c41dc7
            case "/showStatistic":
                String timeRange = request.getParameter("timeRange");
                String popProducts = request.getParameter("popProducts");
                if(timeRange != null){
                    String fromDay = request.getParameter("fromDay");
                    String fromMonth = request.getParameter("fromMonth");
                    String fromYear = request.getParameter("fromYear");
                    String toDay = request.getParameter("toDay");
                    String toMonth = request.getParameter("toMonth");
                    String toYear = request.getParameter("toYear");
                    LocalDate fromLd = LocalDate.of(
                            new Integer(fromYear),
                            new Integer(fromMonth),
                            new Integer(fromDay)
                    );
                    LocalDate toLd = LocalDate.of(
                            new Integer(toYear),
                            new Integer(toMonth),
                            new Integer(toDay)
                    );
                    Date fromDate = DateUtils.getStartOfDay(DateUtils.asDate(fromLd));
                    Date toDate = DateUtils.getStartOfDay(DateUtils.asDate(toLd));
<<<<<<< HEAD
//                    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");
//                    request.setAttribute("dateFrom", sdf.format(fromDate));
//                    request.setAttribute("dateTo", sdf.format(toDate));
=======
>>>>>>> 0fcf8fe5cbbd48cb0530d41c6c82bffe99c41dc7
                    List<History> listHistories = historyFacade.findByRange(fromDate,toDate);
                    request.setAttribute("listHistories", listHistories);
                    request.setAttribute("fromDay", fromDay);
                    request.setAttribute("fromMonth", fromMonth);
                    request.setAttribute("fromYear", fromYear);
                    request.setAttribute("toDay", toDay);
                    request.setAttribute("toMonth", toMonth);
                    request.setAttribute("toYear", toYear);
                }
                if(popProducts != null){
                    List<History> listHistories = historyFacade.findAll();
<<<<<<< HEAD
                    List<Product>listProducts = new ArrayList<>();
            
=======
                    List<Product> listProducts = new ArrayList<>();
>>>>>>> 0fcf8fe5cbbd48cb0530d41c6c82bffe99c41dc7
                    Map<Product,Integer> mapProductsRate = new HashMap<>();
                    for (int i = 0; i < listHistories.size(); i++) {
                        History history = listHistories.get(i);
                        if(!listProducts.contains(history.getProduct())){
                        listProducts.add(history.getProduct());
                            mapProductsRate.put(history.getProduct(), 1);
                        }else{
                            mapProductsRate.merge(history.getProduct(), 1, Integer::sum);
                        }
                    }
                    Map<Product,Integer> sortedMapProductsRate = SortUtils.sortMapReverseByValue(mapProductsRate);
                    request.setAttribute("sortedMapProductsRate", sortedMapProductsRate);
                }
                
                
                request.getRequestDispatcher(PagePathLoader.getPagePath("showStatistic"))
                        .forward(request, response);
                break;    
                
                
                
            case "/showUploadFile":
                request.getRequestDispatcher(PagePathLoader.getPagePath("showUploadFile")).forward(request, response);
                break;
            case "/showReturnPizza":
                List<History> listHistories = historyFacade.findGivenPizza();
                request.setAttribute("listHistories", listHistories);
                request.getRequestDispatcher(PagePathLoader.getPagePath("showReturnPizza")).forward(request, response);
                break;
            case "/returnPizza":
                String historyId = request.getParameter("returnHistoryId");
                History history = historyFacade.find(new Long(historyId));
                if(history == null){
                    request.setAttribute("info", "Такой пиццы не заказано");
                    request.getRequestDispatcher(PagePathLoader.getPagePath("managerIndex")).forward(request, response);
                    return;
                }       
                 product = history.getProduct();
                if(product.getQuantity()>product.getCount()){
                    product.setCount(product.getCount()+1);
                    productFacade.edit(product);
                    history.setDateEnd(c.getTime());
                    historyFacade.edit(history);
                    request.setAttribute("info", "Заказ на пиццу: "+product.getName()+" завершён");
                }else{
                    request.setAttribute("info", "Все заказы доставлены!");
                }       
                request.getRequestDispatcher(PagePathLoader.getPagePath("managerIndex")).forward(request, response);
                break;
                
                
                
                
                
        }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   

}