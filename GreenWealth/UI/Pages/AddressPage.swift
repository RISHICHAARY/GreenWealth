import SwiftUI
import MapKit

struct AddressPage: View {
    
    @Binding var pageState: String
    @Binding var previousPage: String
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @State var pickupLocation: String = "Home"
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func mapSwitch(){
        pageState = "mapPage"
    }
    
    func homeSwitch(){
        pageState = "homePage"
    }
    
    func slotSwitch(){
        pageState = "slotPage"
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
                        Button(action:{}){
                            Text("2")
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
                        .background(Color("TernaryGreen"))
                        .cornerRadius(100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        .disabled(true)
                    }
                    .padding(20)
                    VStack{
                        Text("Select a pickup address")
                            .font(.system(size: 14,weight: .bold))
                    }
                    VStack{
                        Map(coordinateRegion: $region)
                                    .frame(width: 353, height: 251)
                    }
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("PrimaryGreen"),lineWidth:2)
                    )
                    .padding(20)
                    HStack{
                        if(pickupLocation == "Home"){
                            Button(action:{}){
                                Text("Home")
                                    .font(.system(size: 12,weight: .bold))
                            }
                            .frame(width: 74,height: 44)
                            .background(Color("PrimaryGreen"))
                            .cornerRadius(8)
                        }
                        else{
                            Button(action:{ pickupLocation = "Home" }){
                                Text("Home")
                                    .font(.system(size: 12,weight: .bold))
                            }
                            .frame(width: 74,height: 44)
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(8)
                        }
                        if(pickupLocation == "Work"){
                            Button(action:{}){
                                Text("Work")
                                    .font(.system(size: 12))
                            }
                            .frame(width: 74,height: 44)
                            .background(Color("PrimaryGreen"))
                            .cornerRadius(8)
                        }
                        else{
                            Button(action:{ pickupLocation = "Work" }){
                                Text("Work")
                                    .font(.system(size: 12))
                            }
                            .frame(width: 74,height: 44)
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(8)
                        }
                        Spacer()
                        Button(action:{ mapSwitch() }){
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 15,height: 15)
                        }
                        .frame(width: 74,height: 44)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                    }
                    .foregroundColor(.black)
                    .padding(20)
                    Spacer()
                    VStack{
                        Button(action:{slotSwitch()}){
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
                .background(.white)
            }
            .task{
                previousPage = "addressPage"
            }
        }
    }
}

struct adressPreview: View {
    
    @State var pageState: String = "addressPage"
    @State var previousPage: String = ""
    
    var body: some View {
        AddressPage(pageState: $pageState, previousPage: $previousPage)
    }
}

#Preview{
    adressPreview()
}
