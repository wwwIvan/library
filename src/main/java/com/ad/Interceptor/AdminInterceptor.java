package com.ad.Interceptor;

import com.ad.model.Admin;
import com.ad.util.AjaxResult;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Ivan on 2016/8/22.
 */
public class AdminInterceptor implements HandlerInterceptor {

    /**
     * 储存允许通过拦截器的路径
     */
    private List<String> allowUrls;

    public List<String> getAllowUrls() {
        return allowUrls;
    }

    public void setAllowUrls(List<String> allowUrls) {
        this.allowUrls = allowUrls;
    }

    /**
     * 目标方法前调用，如果还希望调用其他拦截器返回true，反之返回false
     * @param request
     * @param response
     * @param o
     * @return
     * @throws Exception
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //返回值为请求的部分地址，不包含站点
        String requestUri = request.getRequestURI();
        //返回站点根路径
        String contextPath = request.getContextPath();
        String url = requestUri.substring(contextPath.length());
        if(allowUrls.contains(url)){
            return true;
        }else{
            Admin admin = (Admin) request.getSession().getAttribute("logged");
            if(admin != null && admin.getId() !=null && !admin.getId().equals("")){
                return true;
            }else{
                request.setAttribute("result", new AjaxResult(false, "您还没有登录或登录已超时，请重新登录"));
                request.getRequestDispatcher("/WEB-INF/admin/admin/loginUI.jsp").forward(request, response);
                return false;
            }
        }
    }

    /**
     *方法在目标方法处理完请求后，在DispatcherServlet向客户端返回响应前调用；
     * 该方法对用户request进行处理
     * @param request
     * @param response
     * @param o
     * @param modelAndView
     * @throws Exception
     */
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

    }

    /**
     *在DispatcherServlet完全处理完请求后被调用
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param e
     * @throws Exception
     */
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
