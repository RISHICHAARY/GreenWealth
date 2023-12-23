import SwiftUI

struct CameraPage: View {
    
    @Binding var pageState: String
    
    func homeSwitch(){
        pageState = "homePage"
    }
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func mapSwitch(){
        pageState = "mapPage"
    }
    
    func addressSwitch(){
        pageState = "addressPage"
    }
    
    func photoSwitch(){
        pageState = "photoPage"
    }
    
    var body: some View {
        ZStack(alignment:.top){
            Color("PrimaryGreen").ignoresSafeArea(.all)
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
                .background(Color("TernaryGreen"))
                .overlay(
                    Rectangle()
                        .frame(height: 2, alignment: .bottom)
                        .foregroundColor(Color("PrimaryGreen")),
                    alignment: .bottom
                )
                .padding(.bottom,0)
                VStack{
                    VStack{
                        ZStack{
                            VStack{}
                                .frame(width: 353,height: 530)
                                .background(.black)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color("SecondaryGreen"),lineWidth:2)
                                )
                            VStack{
                                Text("Capture a photo of your material")
                                    .font(.system(size: 12))
                            }
                            .frame(width: 214,height: 28)
                            .background(Color("TernaryGreen"))
                            .cornerRadius(100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color("PrimaryGreen"),lineWidth:2)
                            )
                            .offset(y:-220)
                        }
                    }
                    Spacer()
                    VStack{
                        Button(action:{photoSwitch()}){
                            VStack{}
                                .frame(width: 80,height: 80)
                                .background(.white)
                                .cornerRadius(100)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color("EmptyColor"),lineWidth:5)
                                )
                        }
                    }
                    .padding(20)
                }
                .padding(20)
                .background(Color("PrimaryGreen"))
            }
        }
    }
}

struct cameraPreview: View {
    
    @State var pageState: String = "homePage"
    
    var body: some View {
        CameraPage(pageState: $pageState)
    }
}

#Preview{
    cameraPreview()
}
