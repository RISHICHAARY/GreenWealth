import SwiftUI
import MapKit

struct LocationPage: View {
    
    @Binding var pageState: String
    
    @State var search: String = ""
    
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
                        Button(action:{mapSwitch()}){
                            Image(systemName: "arrow.left")
                                .resizable()
                                .frame(width: 20,height: 20)
                        }
                        Spacer()
                        Text("Select a location")
                            .font(.system(size: 16,weight: .bold))
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding(.vertical,20)
                    .padding(.horizontal,20)
                    VStack{
                        TextField("Search",text: $search)
                            .font(.system(size: 12,weight: .bold))
                            .padding(10)
                            .frame(width: 353,height: 38)
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(8)
                    }
                    .padding(.horizontal,20)
                    VStack{
                        Button(action:{homeSwitch()}){
                            Text("Current Location")
                                .font(.system(size: 12,weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .foregroundColor(.black)
                        .background(Color("PrimaryGreen"))
                        .cornerRadius(100)
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal,20)
                    ZStack{
                        VStack{
                            Map(coordinateRegion: $region)
                                        .frame(width: 353, height: 430)
                        }
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        .padding(.horizontal,20)
                        Button(action:{}){
                            VStack{
                                Text("No. 2104, Amalfi,House of Hiranandani OMR Egattur,Chennai")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                        }
                        .frame(width: 112)
                        .padding(5)
                        .background(Color("TernaryGreen"))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        .offset(x:47,y:-100)
                    }
                    Spacer()
                    VStack{
                        Button(action:{homeSwitch()}){
                            Text("Confirm")
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
        }
    }
}

struct locationPreview: View {
    
    @State var pageState: String = "homePage"
    
    var body: some View {
        LocationPage(pageState: $pageState)
    }
}

#Preview{
    locationPreview()
}
