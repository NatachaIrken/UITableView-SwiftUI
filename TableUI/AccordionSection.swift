//import SwiftUI
//
//struct AccordionSection: View {
//    let title: String
//    let content: String
//    let isExpanded: Bool
//    let toggle: () -> Void
//
//    var body: some View {
//        VStack(alignment: .leading) {
//            HStack {
//                Text(title)
//                    .font(.headline)
//                Spacer()
//                Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
//                    .foregroundColor(.gray)
//            }
//            .contentShape(Rectangle())
//            .onTapGesture(perform: toggle)
//
//            if isExpanded {
//                Text(content)
//                    .padding()
//                    .transition(.opacity)
//            }
//        }
//    }
//}
//
//struct SMSTCView:View {
//    @SwiftUI.Environment(\.presentationMode) var presentationMode
//    
//    @State private var expandedIndices: Set<Int> = []
//
//       let items = [
//           ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do?", "Detail text for item 1"),
//           ("Consectetur adipiscing elit, sed do eiusmod tempor incididunt?", "Detail text for item 2"),
//           ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do?", "Detail text for item 3"),
//           ("Consectetur adipiscing elit, sed do eiusmod tempor incididunt?", "Detail text for item 4")
//       ]
//
//    
//    var body: some View {
//	
//        VStack{
//            Image("topImage")
//                .ignoresSafeArea()
//                .frame(width: UIScreen.main.bounds.width)
//            
//            HStack(alignment: .center){
//                Text("PREGUNTAS FRECUENTES")
//                    .font(Font.custom("Cera Pro", size: 12))
//                    .fontWeight(.semibold)
//                    .foregroundStyle(Color(red: 0.29, green: 0.30, blue: 0.40))
//                
//                Spacer()
//                Button{
//                    presentationMode.wrappedValue.dismiss()
//                }label: {
//                    Image("cerrarTC")
//                }
//                
//            }
//            .padding(.horizontal, 16)
//            .padding(.top, 32)
//            // hstack
//            
//            Color(red: 0.79, green: 0.81, blue: 0.84)
//                .frame(height: 1.0)
//                .frame(width: UIScreen.main.bounds.width)
//                .padding(.top, 2)
//            //separador
//            Spacer()
//            
//			List {
//				ScrollView{
//					ForEach(items.indices, id: \.self) { index in
//						AccordionSection(
//							title: items[index].0,
//							content: items[index].1,
//							isExpanded: expandedIndices.contains(index),
//							toggle: {
//								//withAnimation {
//								if expandedIndices.contains(index) {
//									expandedIndices.remove(index)
//								} else {
//									expandedIndices.insert(index)
//									//}
//								}
//							}
//						)
//						
//					}//foreach
//				}
//			}
//			.listStyle(PlainListStyle())
//			//
//			.padding(.horizontal, 24)
//			.padding(.top, 36)
//            
//            Spacer()
//            
//        }.background(.white)
//        .ignoresSafeArea()
//        .background(.white)
//    }
//}


import SwiftUI

struct AccordionSection: View {
	let title: String
	let content: String
	let isExpanded: Bool
	let toggle: () -> Void

	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(title)
					.font(.headline)
				Spacer()
				Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
					.foregroundColor(.gray)
			}
			.contentShape(Rectangle())
			.onTapGesture(perform: toggle)

			if isExpanded {
				Text(content)
					.padding()
					.transition(.opacity)
			}
		}
	}
}

struct SMSTCView:View {
	@SwiftUI.Environment(\.presentationMode) var presentationMode
	
	@State private var expandedIndices: Set<Int> = []

	   let items = [
		   ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do?", "Detail text for item 1"),
		   ("Consectetur adipiscing elit, sed do eiusmod tempor incididunt?", "Detail text for item 2"),
		   ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do?", "Detail text for item 3"),
		   ("Consectetur adipiscing elit, sed do eiusmod tempor incididunt?", "Detail text for item 4")
	   ]

	
	var body: some View {
	
		VStack{
			Image("topImage")
				.ignoresSafeArea()
				.frame(width: UIScreen.main.bounds.width)
			
			HStack(alignment: .center){
				Text("PREGUNTAS FRECUENTES")
					.font(Font.custom("Cera Pro", size: 12))
					.fontWeight(.semibold)
					.foregroundStyle(Color(red: 0.29, green: 0.30, blue: 0.40))
				
				Spacer()
				Button{
					presentationMode.wrappedValue.dismiss()
				}label: {
					Image("cerrarTC")
				}
				
			}
			.padding(.horizontal, 16)
			.padding(.top, 32)
			// hstack
			
			Color(red: 0.79, green: 0.81, blue: 0.84)
				.frame(height: 1.0)
				.frame(width: UIScreen.main.bounds.width)
				.padding(.top, 2)
			//separador
			Spacer()
			
			List {
				ScrollView{
					ForEach(items.indices, id: \.self) { index in
						AccordionSection(
							title: items[index].0,
							content: items[index].1,
							isExpanded: expandedIndices.contains(index),
							toggle: {
								//withAnimation {
								if expandedIndices.contains(index) {
									expandedIndices.remove(index)
								} else {
									expandedIndices.insert(index)
									//}
								}
							}
						)
						
					}//foreach
				}
			}
			//
			.padding(.horizontal, 24)
			.padding(.top, 36)
			
			Spacer()
			
		}.background(.white)
		.ignoresSafeArea()
		.background(.white)
	}
}
