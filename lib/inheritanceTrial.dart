 class Table {
     int noOfDrawers;
      double length;
     double width;
    
    
     Table (this.noOfDrawers,this.length,this.width);
 }
 class Pine extends Table {
     double pinePrice=0;
     Pine(int noOfDrawers, double length, double width, this.pinePrice):super(noOfDrawers, length,width);
        
    }
    void woodPrice(){
        //return pinePrice;
    }
