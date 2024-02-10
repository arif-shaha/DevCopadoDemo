public class RTIntegation12oct 
{   
    public String Searchh{get;set;}
    public List<string> Names{get;set;}
    public void GetPostalDetails()
    {   
        Names = New List<String> ();
        String EndPoint = 'https://api.postalpincode.in/pincode/'+Searchh;
        http p = New http();//create protocal
        httpRequest r = New httpRequest();//create request
        r.setEndpoint(EndPoint);
        r.setMethod('GET');
        httpResponse response = p.send(r);//enter
        String Body = response.getBody();
        System.JSONParser jp = JSON.createParser(Body);//build logic to get data
        While(jp.nextToken() != null)
        {
            if(jp.getText() == 'name')
            {
                jp.nextToken();
                Names.add(jp.getText());
            }
        } 
        System.debug(Names);
 
    }
}