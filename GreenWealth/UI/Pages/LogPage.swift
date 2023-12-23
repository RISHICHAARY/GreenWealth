import SwiftUI

struct LogPage: View {
    
    @Binding var pageState: String
    @Binding var previousPage: String
    
    @State var search: String = ""
    
    func backSwitch(){
        pageState = previousPage
    }
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func mapSwitch(){
        pageState = "mapPage"
    }
    
    func homeSwitch(){
        pageState = "homePage"
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
                    HStack{
                        Button(action:{backSwitch()}){
                            Image(systemName: "arrow.left")
                                .resizable()
                                .frame(width: 20,height: 20)
                        }
                        Spacer()
                        Text("Pickup Log")
                            .font(.system(size: 16,weight: .bold))
                        Spacer()
                        Button(action:{}){
                            Image(systemName: "questionmark.circle")
                                .resizable()
                                .frame(width: 20,height: 20)
                        }
                    }
                    .foregroundColor(.black)
                    .padding(20)
                    VStack{
                        TextField("Search",text: $search)
                            .font(.system(size: 12,weight: .bold))
                            .padding(10)
                            .frame(width: 353,height: 38)
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(8)
                    }
                    .padding(.horizontal,20)
                    VStack(spacing:30){
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("Order ID: #123457")
                                Spacer()
                                Text("in Progress")
                                    .frame(width: 84,height: 18)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(100)
                            }
                            .font(.system(size: 10))
                            Divider()
                            HStack{
                                VStack(alignment:.leading,spacing: 8){
                                    HStack{
                                        Text("Materials:")
                                            .fontWeight(.bold)
                                        Text("10kg of Paper, Bottels")
                                    }
                                    HStack{
                                        Text("Pickup from:")
                                            .fontWeight(.bold)
                                        Text("Home")
                                    }
                                    HStack{
                                        Text("Slot:")
                                            .fontWeight(.bold)
                                        Text("18th from 09:00 AM t0 11:00 AM")
                                    }
                                }
                                .font(.system(size: 12))
                            }
                        }
                        .padding()
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(10)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("Order ID: #123457")
                                Spacer()
                                Text("in Progress")
                                    .frame(width: 84,height: 18)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(100)
                            }
                            .font(.system(size: 10))
                            Divider()
                            HStack{
                                VStack{}
                                    .frame(width: 60,height: 60)
                                    .background(Color("EmptyColor"))
                                    .cornerRadius(5)
                                VStack(alignment:.leading,spacing: 8){
                                    Text("10kg of Paper, Bottels")
                                    Text("Home")
                                    Text("18th from 09:00 AM to 11:00 AM")
                                }
                                .font(.system(size: 12))
                                Spacer()
                                HStack(spacing:1){
                                    Image(systemName: "indianrupeesign")
                                        .resizable()
                                        .frame(width: 10,height: 15)
                                    Text("300")
                                }
                                .frame(width: 84,height: 36)
                                .background(Color("PrimaryGreen"))
                                .cornerRadius(5)
                            }
                            Divider()
                            HStack{
                                Text("Rate:")
                                    .font(.system(size: 12,weight: .bold))
                                Button(action:{}){
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                }
                                Button(action:{}){
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                }
                                Button(action:{}){
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                }
                                Button(action:{}){
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                }
                                Button(action:{}){
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                }
                            }
                            .foregroundColor(.black)
                        }
                        .padding()
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(10)
                    }
                    .padding(.horizontal,20)
                    .padding(.top,10)
                    Spacer()
                }
                .background(.white)
            }
        }
    }
}

struct logPreview: View {
    
    @State var pageState: String = "homePage"
    @State var previousPage: String = ""
    
    var body: some View {
        LogPage(pageState: $pageState, previousPage: $previousPage)
    }
}

#Preview{
    logPreview()
}
