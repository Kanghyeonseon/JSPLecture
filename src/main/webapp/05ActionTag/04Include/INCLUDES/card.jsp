<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.*" %>
<%
	Reader rin = new FileReader("C:\\강현선\\EclipseWorkspace\\card\\card.txt");
	String bname="";
	while(true){
		int data = rin.read();
		/* rin.read()가 int형으로 리턴된다. */
		if(data==-1) break;
		bname += (char) data + "";
	}
	String arr[] = bname.split(" ");
	/* 공백을 기준으로 나눠서 배열에 값을 넣어준다. */
	System.out.println("arr0 : " + arr[0]);
	System.out.println("arr0 : " + arr[1]);
	System.out.println("arr0 : " + arr[2]);
	System.out.println("arr0 : " + arr[3]);
	rin.close();
	/* 스트림을 종료해준다. */
%>
<!-- card -->
 
<div id="cards">
    <div class="card">
        <img src="../IMG/<%=arr[0] %>">
    <div class="iteminfo">
        <span>Category</span>
        <h3>상품설명</h3>
        <p>이상품에 대한 설명이 들어갑니다</p>
        <a href="#">자세히보기</a>
    </div>
</div>
<div class="card">
    <img src="../IMG/<%=arr[1] %>">
    <div class="iteminfo">
        <span>Category</span>
        <h3>상품설명</h3>
        <p>이상품에 대한 설명이 들어갑니다</p>
        <a href="#">자세히보기</a>
    </div>
</div>
<div class="card">
    <img src="../IMG/<%=arr[2] %>">
    <div class="iteminfo">
        <span>Category</span>
        <h3>상품설명</h3>
        <p>이상품에 대한 설명이 들어갑니다</p>
        <a href="#">자세히보기</a>
    </div>
</div>
<div class="card">
    <img src="../IMG/<%=arr[3] %>">
        <div class="iteminfo">
            <span>Category</span>
            <h3>상품설명</h3>
            <p>이상품에 대한 설명이 들어갑니다</p>
            <a href="#">자세히보기</a>
        </div>
    </div>
</div>