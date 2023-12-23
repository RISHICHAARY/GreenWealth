import SwiftUI
import MapKit

struct ConfirmPage: View {
    
    @Binding var pageState: String
    @Binding var previousPage: String
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func mapSwitch(){
        pageState = "mapPage"
    }
    
    func homeSwitch(){
        pageState = "homePage"
    }
    
    func logSwitch(){
        pageState = "logPage"
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
                        Button(action:{}){
                            Image(systemName: "checkmark")
                                .resizable()
                                .frame(width: 30,height: 30)
                        }
                        .frame(width: 70,height: 70)
                        .foregroundColor(.black)
                        .background(Color("PrimaryGreen"))
                        .cornerRadius(100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color("TernaryGreen"),lineWidth:2)
                        )
                        .disabled(true)
                    }
                    .padding(20)
                    VStack{
                        Text("Pickup scheduled successfully")
                            .font(.system(size: 14,weight: .bold))
                    }
                    .padding(0)
                    ZStack{
                        VStack{
                            Map(coordinateRegion: $region)
                                        .frame(width: 353, height: 185)
                        }
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        VStack{
                            Text("OTP: 123-456")
                                .font(.system(size: 12))
                        }
                        .frame(width: 112,height: 28)
                        .background(Color("TernaryGreen"))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        .offset(x:-110,y:-70)
                        VStack{
                            HStack(spacing:3){
                                Text("Track collector")
                                    .font(.system(size: 12))
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 12,height: 12)
                            }
                        }
                        .frame(width: 112,height: 28)
                        .background(Color("TernaryGreen"))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        .offset(x:110,y:-70)
                    }
                    .padding(.vertical,10)
                    VStack(alignment:.leading){
                        VStack(alignment:.leading){
                            Text("")
                                .frame(maxWidth: .infinity)
                            HStack{
                                Text("Type of Item:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("Paper")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                            HStack{
                                Text("Pickup Location:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("Home")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                            HStack{
                                Text("Pickup Date:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("18th")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                            HStack{
                                Text("Pickup Time:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("05:00 PM to 07:00 PM")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                        }
                        .padding(10)
                    }
                    .frame(width: 353,height: 120)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(10)
                    HStack{
                        Button(action:{}){
                            VStack{
                                Image(systemName: "phone.fill")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                Text("Call")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                        Spacer()
                        Button(action:{}){
                            VStack{
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                Text("Modify")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                        Spacer()
                        Button(action:{}){
                            VStack{
                                Image(systemName: "ticket.fill")
                                    .resizable()
                                    .frame(width: 40,height: 30)
                                Text("Ticket")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                        Button(action:{}){
                            VStack{
                                Image(systemName: "x.circle.fill")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                Text("Cancel")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal,20)
                    Spacer()
                    VStack{
                        Button(action:{logSwitch()}){
                            Text("Pickup Log")
                                .font(.system(size: 12,weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .foregroundColor(.black)
                        .background(Color("PrimaryGreen"))
                        .cornerRadius(100)
                    }
                    .padding(.top,10)
                    .padding(.horizontal,20)
                    VStack{
                        Button(action:{homeSwitch()}){
                            Text("Home")
                                .font(.system(size: 12,weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .foregroundColor(.black)
                        .background(Color("PrimaryGreen"))
                        .cornerRadius(100)
                    }
                    .padding(.bottom,20)
                    .padding(.horizontal,20)
                }
                .frame(maxWidth: .infinity)
                .background(.white)
            }
            .task{
                previousPage = "confirmPage"
            }
        }
    }
}

struct confirmPreview: View {
    
    @State var pageState: String = "homePage"
    @State var previousPage: String = ""
    
    var body: some View {
        ConfirmPage(pageState: $pageState, previousPage: $previousPage)
    }
}

#Preview{
    confirmPreview()
}
