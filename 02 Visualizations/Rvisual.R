source("../01 Data/create_data_frame.R", echo = TRUE)
ggplot (df_customers,aes(x=CUSTOMER_CITY,y=CUSTOMER_STATE)) + geom_point()
ggplot (df_orders,aes(x=ORDER_DATE,y=SHIPPED_DATE)) + geom_point()
ggplot (df_order_details,aes(x=ORDER_ID,y=ORDER_QTY)) + geom_point()
ggplot (df_items,aes(x=ITEM_ID,y=UNIT_PRICE)) + geom_point()


p1<- ggplot(df_full, aes(x=as.Date(ORDER_DATE, "%Y-%m-%d"), y=as.Date(SHIPPED_DATE,"%Y-%m-%d"), color=as.factor(UNIT_PRICE))) + geom_point() 
p1 + facet_wrap(~CUSTOMER_STATE)

p2<- ggplot(df_full, aes(x=as.Date(ORDER_DATE, "%Y-%m-%d"), y=as.Date(SHIPPED_DATE,"%Y-%m-%d"), color=as.factor(TITLE))) + geom_point() 
p2 + facet_wrap(~CUSTOMER_STATE)

p3<- ggplot(df_full, aes(x=as.Date(ORDER_DATE, "%Y-%m-%d"), y=as.Date(SHIPPED_DATE,"%Y-%m-%d"), color=as.factor(ARTIST))) + geom_point() 
p3 + facet_wrap(~CUSTOMER_STATE)
