return 'This is a demo and should be run as such'

# URLs
$urlCalculator = 'http://www.dneonline.com/calculator.asmx'

#region SOAP Body
$Body = '<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <Divide xmlns="http://tempuri.org/">
      <intA>5</intA>
      <intB>2</intB>
    </Divide>
    <Multiply xmlns="http://tempuri.org/">
      <intA>5</intA>
      <intB>5</intB>
    </Multiply>
    <Subtract xmlns="http://tempuri.org/">
      <intA>5</intA>
      <intB>5</intB>
    </Subtract>
    <Add xmlns="http://tempuri.org/">
      <intA>5</intA>
      <intB>5</intB>
    </Add>
  </soap:Body>
</soap:Envelope>'
#endregion

# Divide
$divideContent = Invoke-WebRequest -Uri $urlCalculator -Headers (@{SOAPAction='http://tempuri.org/Divide'}) `
    -Body $Body -ContentType 'text/xml' -Method 'POST'
$divideContent.Content

# Multiply
$multiplyContent = Invoke-WebRequest -Uri $urlCalculator -Headers (@{SOAPAction='http://tempuri.org/Multiply'}) `
    -Body $Body -ContentType 'text/xml' -Method 'POST'
$multiplyContent.Content