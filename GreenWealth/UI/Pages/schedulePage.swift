import SwiftUI

struct SchedulePage: View {
    
    @Binding var pageState: String
    @Binding var previousPage: String
    
    @State var dateState: Int = 1
    @State var timeState: Int = 1
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func mapSwitch(){
        pageState = "mapPage"
    }
    
    func homeSwitch(){
        pageState = "homePage"
    }
    
    func addressSwitch(){
        pageState = "addressPage"
    }
    
    func confirmSwitch(){
        pageState = "confirmPage"
    }
    
    var body: some View {
        ZStack(alignment:.top){
            Color("TernaryGreen").ignoresSafeArea(.all)
            VStack(spacing:0){
                HStack{
                    Button(action:{profileSwitch()}){
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 25,height: 25)
                    }
                    Spacer()
                    Button(action:{homeSwitch()}){
                        Image("Logo")
                            .resizable()
                            .frame(width: 30,height: 30)
                    }
                    Spacer()
                    Button(action:{mapSwitch()}){
                        Image(systemName: "map")
                            .resizable()
                            .frame(width: 25,height: 25)
                    }
                }
                .padding(.horizontal,20)
                .padding(.vertical,10)
                .foregroundColor(.black)
                .overlay(
                    Rectangle()
                        .frame(height: 2, alignment: .bottom)
                        .foregroundColor(Color("PrimaryGreen")),
                    alignment: .bottom
                )
                .padding(.bottom,0)
                VStack{
                    HStack(spacing:0){
                        Button(action:{homeSwitch()}){
                            Text("1")
                                .font(.system(size: 24,weight: .bold))
                        }
                        .frame(width: 70,height: 70)
                        .foregroundColor(.black)
                        .background(Color("TernaryGreen"))
                        .cornerRadius(100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        VStack{
                            Divider()
                                .frame(minHeight: 3)
                                .overlay(Color("PrimaryGreen"))
                                .padding(0)
                        }
                        Button(action:{addressSwitch()}){
                            Text("2")
                                .font(.system(size: 24,weight: .bold))
                        }
                        .frame(width: 70,height: 70)
                        .foregroundColor(.black)
                        .background(Color("TernaryGreen"))
                        .cornerRadius(100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        VStack{
                            Divider()
                                .frame(minHeight: 3)
                                .overlay(Color("PrimaryGreen"))
                                .padding(0)
                        }
                        Button(action:{}){
                            Text("3")
                                .font(.system(size: 24,weight: .bold))
                        }
                        .frame(width: 70,height: 70)
                        .foregroundColor(.black)
                        .background(Color("PrimaryGreen"))
                        .cornerRadius(100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        .disabled(true)
                    }
                    .padding(20)
                    HStack{
                        Text("Select a pickup slot")
                            .font(.system(size: 14,weight: .bold))
                        Spacer()
                        Text("Today:14th")
                            .font(.system(size: 14,weight: .bold))
                    }
                    .padding(.horizontal,20)
                    HStack{
                        if(dateState == 1){
                            Button(action:{}){
                                VStack{
                                    Text("18th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ dateState = 1 }){
                                VStack{
                                    Text("18th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("SecondaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        Spacer()
                        if(dateState == 2){
                            Button(action:{}){
                                VStack{
                                    Text("19th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ dateState = 2 }){
                                VStack{
                                    Text("19th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("SecondaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        Spacer()
                        if(dateState == 3){
                            Button(action:{}){
                                VStack{
                                    Text("20th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ dateState = 3 }){
                                VStack{
                                    Text("20th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("SecondaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        Spacer()
                        if(dateState == 4){
                            Button(action:{}){
                                VStack{
                                    Text("21th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ dateState = 4 }){
                                VStack{
                                    Text("21th")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 74,height: 44)
                                .foregroundColor(.black)
                                .background(Color("SecondaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                    }
                    .padding(20)
                    HStack{
                        if(timeState == 1){
                            Button(action:{}){
                                VStack{
                                    Text("09:00 AM to 11:00 AM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ timeState = 1 }){
                                VStack{
                                    Text("09:00 AM to 11:00 AM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("TernaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        Spacer()
                        if(timeState == 2){
                            Button(action:{}){
                                VStack{
                                    Text("11:00 AM to 01:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ timeState = 2 }){
                                VStack{
                                    Text("11:00 AM to 01:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("TernaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                    }
                    .padding(.horizontal,20)
                    HStack{
                        if(timeState == 3){
                            Button(action:{}){
                                VStack{
                                    Text("01:00 PM to 03:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ timeState = 3 }){
                                VStack{
                                    Text("01:00 PM to 03:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("TernaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        Spacer()
                        if(timeState == 4){
                            Button(action:{}){
                                VStack{
                                    Text("03:00 PM to 05:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ timeState = 4 }){
                                VStack{
                                    Text("03:00 PM to 05:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("TernaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                    }
                    .padding(.horizontal,20)
                    HStack{
                        if(timeState == 5){
                            Button(action:{}){
                                VStack{
                                    Text("05:00 PM to 07:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ timeState = 5 }){
                                VStack{
                                    Text("05:00 PM to 07:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("TernaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        Spacer()
                        if(timeState == 6){
                            Button(action:{}){
                                VStack{
                                    Text("07:00 PM to 09:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                        else{
                            Button(action:{ timeState = 6 }){
                                VStack{
                                    Text("07:00 PM to 09:00 PM")
                                        .font(.system(size: 12,weight: .bold))
                                }
                                .frame(width: 167,height: 44)
                                .foregroundColor(.black)
                                .background(Color("TernaryGreen"))
                                .cornerRadius(8)
                            }
                        }
                    }
                    .padding(.horizontal,20)
                    Spacer()
                    VStack{
                        Button(action:{confirmSwitch()}){
                            Text("Proceed")
                                .font(.system(size: 12,weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .foregroundColor(.black)
                        .background(Color("PrimaryGreen"))
                        .cornerRadius(100)
                    }
                    .padding(20)
                }
                .padding(.top,0)
                .background(.white)
            }
            Spacer()
        }
        .task{
            previousPage = "schedulePage"
        }
    }
}

struct schedulePreview: View {
    
    @State var pageState: String = "homePage"
    @State var previousPage: String = ""
    
    var body: some View {
        SchedulePage(pageState: $pageState, previousPage: $previousPage)
    }
}

#Preview{
    schedulePreview()
}
