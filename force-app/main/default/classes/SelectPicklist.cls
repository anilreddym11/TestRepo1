public class SelectPicklist {

    public SelectPicklist(ApexPages.StandardController controller) {

    }
public String YearValue{set;get;}
public Boolean YearValue1{set;get;}
public Boolean YearValue2{set;get;}
public Boolean YearValue3{set;get;}
public List<SelectOption> getYearlist () {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('','--None--'));
        options.add(new SelectOption('1','2010'));
        options.add(new SelectOption('2','2011'));
        options.add(new SelectOption('3','2012'));

        return options;
    }  
    
    public void Picklist(){
    
    if(YearValue=='1')
    {
        YearValue1 = true;
        YearValue2 = false;
        YearValue3=false;
        }
    else if(YearValue=='2')
    {
    YearValue2 = true;
    YearValue1 =false;
    YearValue3=false;
    }
    else if(YearValue=='3')
    {
      System.debug('BBBBBBBBBBBBBBBBBBBBBBBB');
      
      YearValue2 = false;
    YearValue1 =false;
    YearValue3=true;
    
    
    }
    else{
    System.debug('AAAAAAAAAAAAAAa');
    YearValue2 = false;
    YearValue1 =false;
    YearValue3=false;
    }
    }
                    
  }