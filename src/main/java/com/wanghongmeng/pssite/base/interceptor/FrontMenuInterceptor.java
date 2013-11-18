package com.wanghongmeng.pssite.base.interceptor;

import com.wanghongmeng.pssite.base.util.Constants;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: wanghongmeng
 * Date: 9/21/13
 * Time: 11:18 AM
 * To change this template use File | Settings | File Templates.
 */
public class FrontMenuInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        request.setAttribute("staticPrefix",Constants.URL_STATIC_PREFIX);
        request.setAttribute("keyword", Constants.SEO_KEYWORD);
        request.setAttribute("description",Constants.SEO_DESCRIPTION);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    }
}
