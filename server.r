library(shiny)
library(datasets)

m1=lm(mpg~.,data=mtcars)
m3=step(m1,scope=list(lower=~am, upper=~.), direction="backward", data=mtcars)

mpg=function(wt,qsec,am){
        newdata=as.data.frame(cbind(wt,qsec,am))
        x=round(predict(m3,newdata),1)
        names(x)="MPG"
        x
}

shinyServer( 
        function(input, output) {
        output$prediction=renderPrint({mpg(input$wt,input$qsec,input$am)}) 
        }
)