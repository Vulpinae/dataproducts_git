dagennr<-function(datum,div1) 
{
        nu<-Sys.time()
        dagen<- as.numeric(difftime(nu,datum , units = c("days")))
        bigdaynr<-format(ceiling(dagen/div1)*div1,digits=8,big.mark=",")
        bigdaynr
}

dagen<-function(datum,div1) 
        {
        nu<-Sys.time()
        dagen<- as.numeric(difftime(nu,datum , units = c("days")))
        bigdaynr<-ceiling(dagen/div1)*div1
        bigdayout<-format(as.Date(nu)+bigdaynr-dagen, "%d %b %Y")
        bigdayout
        }
urennr<-function(datum,div2) 
{
        nu<-Sys.time()
        uren<- as.numeric(difftime(nu,datum , units = c("hours")))
        bighournr<-format(ceiling(uren/div2)*div2,digits=8, scientific=FALSE,big.mark=",")
        bighournr
}

uren<-function(datum,div2) 
{
        nu<-Sys.time()
        uren<- as.numeric(difftime(nu,datum , units = c("hours")))
        bighournr<-ceiling(uren/div2)*div2
        bighourout<-format(nu+bighournr*3600-uren*3600, "%d %b %Y")
        bighourout
}

minutennr<-function(datum,div3) 
{
        nu<-Sys.time()
        minuten<- as.numeric(difftime(nu,datum , units = c("mins")))
        bigminutenr<-format(ceiling(minuten/div3)*div3,digits=10, scientific=FALSE,big.mark=",")
        bigminutenr
}

minuten<-function(datum,div3) 
{
        nu<-Sys.time()
        minuten<- as.numeric(difftime(nu,datum , units = c("mins")))
        bigminutennr<-ceiling(minuten/div3)*div3
        bigminuteout<-format(nu+bigminutennr*60-minuten*60, "%d %b %Y")
        bigminuteout
}


shinyServer(
        function(input, output) 
                {
                output$odate<-renderPrint({input$datum})
                output$bigdaynr<-renderPrint({dagennr(input$datum,input$div1)})
                output$bigday<-renderPrint({dagen(input$datum, input$div1)})
                output$bighournr<-renderPrint({urennr(input$datum,input$div2)})
                output$bighour<-renderPrint({uren(input$datum, input$div2)})
                output$bigminutenr<-renderPrint({minutennr(input$datum,input$div3)})
                output$bigminute<-renderPrint({minuten(input$datum, input$div3)})
                }
            )