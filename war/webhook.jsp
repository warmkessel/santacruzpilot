<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
    StringBuilder webhookDataBuilder = new StringBuilder();
    String line;

    while ((line = request.getReader().readLine()) != null) {
        webhookDataBuilder.append(line);
    }

    String webhookData = webhookDataBuilder.toString();
    System.out.println("Received Webhook from Google Ads: " + webhookData);
 %>
<!DOCTYPE html>
<html>
<head>
    <title>Webhook Response</title>
</head>
<body>
    Webhook received from Google Ads!
    
    <%=webhookData %>
</body>
</html>