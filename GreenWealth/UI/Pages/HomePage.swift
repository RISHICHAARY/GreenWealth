import SwiftUI

struct HomePage: View {
    
    @Binding var pageState: String
    @Binding var previousPage: String
    
    @State var selectedCategories = [""]
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func mapSwitch(){
        pageState = "mapPage"
    }
    
    func addressSwitch(){
        pageState = "addressPage"
    }
    
    func cameraSwitch(){
        pageState = "cameraPage"
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
                    Button(action:{}){
                        Image("Logo")
                            .resizable()
                            .frame(width: 30,height: 30)
                    }
                    .disabled(true)
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
                            Text("1")
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
                        Text("Select one or more categories")
                            .font(.system(size: 14,weight: .bold))
                    }
                    Grid{
                        GridRow{
                            if(selectedCategories.contains("Paper")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Paper")!)
                                }){
                                    VStack{
                                        Image(systemName: "newspaper.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Paper")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Paper")
                                }){
                                    VStack{
                                        Image(systemName: "newspaper.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Paper")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            if(selectedCategories.contains("Plastic")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Plastic")!)
                                }){
                                    VStack{
                                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Plastic")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Plastic")
                                }){
                                    VStack{
                                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Plastic")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            if(selectedCategories.contains("Bottels")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Bottels")!)
                                }){
                                    VStack{
                                        Image(systemName: "waterbottle.fill")
                                            .resizable()
                                            .frame(width: 15,height: 25)
                                        Text("Bottels")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Bottels")
                                }){
                                    VStack{
                                        Image(systemName: "waterbottle.fill")
                                            .resizable()
                                            .frame(width: 15,height: 25)
                                        Text("Bottels")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                        }
                        GridRow{
                            if(selectedCategories.contains("Toys")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Toys")!)
                                }){
                                    VStack{
                                        Image(systemName: "teddybear.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Toys")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Toys")
                                }){
                                    VStack{
                                        Image(systemName: "teddybear.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Toys")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            if(selectedCategories.contains("Metal")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Metal")!)
                                }){
                                    VStack{
                                        Image(systemName: "paperclip")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Metal")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Metal")
                                }){
                                    VStack{
                                        Image(systemName: "paperclip")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Metal")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            if(selectedCategories.contains("Electronics")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Electronics")!)
                                }){
                                    VStack{
                                        Image(systemName: "headphones")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Electronics")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Electronics")
                                }){
                                    VStack{
                                        Image(systemName: "headphones")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Electronics")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                        }
                        GridRow{
                            if(selectedCategories.contains("Organics")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Organics")!)
                                }){
                                    VStack{
                                        Image(systemName: "carrot.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Organics")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Organics")
                                }){
                                    VStack{
                                        Image(systemName: "carrot.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Organics")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            if(selectedCategories.contains("Clothes")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Clothes")!)
                                }){
                                    VStack{
                                        Image(systemName: "tshirt.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Clothes")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Clothes")
                                }){
                                    VStack{
                                        Image(systemName: "tshirt.fill")
                                            .resizable()
                                            .frame(width: 25,height: 25)
                                        Text("Clothes")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            if(selectedCategories.contains("Others")){
                                Button(action:{
                                    selectedCategories.remove(at: selectedCategories.firstIndex(of: "Others")!)
                                }){
                                    VStack{
                                        Image(systemName: "sofa.fill")
                                            .resizable()
                                            .frame(width: 35,height: 25)
                                        Text("Others")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                            else{
                                Button(action:{
                                    selectedCategories.append("Others")
                                }){
                                    VStack{
                                        Image(systemName: "sofa.fill")
                                            .resizable()
                                            .frame(width: 35,height: 25)
                                        Text("Others")
                                            .font(.system(size: 12))
                                    }
                                    .frame(width: 104,height: 95)
                                    .foregroundColor(.black)
                                    .background(Color("SecondaryGreen"))
                                    .cornerRadius(8)
                                }
                            }
                        }
                    }
                    .padding(20)
                    HStack{
                        VStack{
                            Divider()
                        }
                        Text("or")
                            .font(.system(size: 14))
                            .padding(.horizontal,10)
                        VStack{
                            Divider()
                        }
                    }
                    .padding(.horizontal,20)
                    VStack{
                        Button(action:{cameraSwitch()}){
                            Image(systemName: "camera.fill")
                                .resizable()
                                .frame(width: 30,height: 25)
                        }
                        Text("Capture")
                            .font(.system(size:12))
                    }
                    .frame(width: 80,height: 80)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(8)
                    .foregroundColor(.black)
                    .padding(.horizontal,20)
                    Spacer()
                    VStack{
                        Button(action:{addressSwitch()}){
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
            previousPage = "homePage"
        }
    }
}

struct homePreview: View {
    
    @State var pageState: String = "homePage"
    @State var previousPage: String = ""
    
    var body: some View {
        HomePage(pageState: $pageState, previousPage: $previousPage)
    }
}

#Preview{
    homePreview()
}
