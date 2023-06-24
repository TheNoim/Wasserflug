import SwiftUI
import FloatplaneAPIClient
import CachedAsyncImage

struct PlayMediaView: View {
	
	enum ViewMode {
		case playButton
		case imageCard
	}
	
	let thumbnail: ImageModelShared?
	let viewMode: ViewMode
	let width: CGFloat?
	let playButtonSize: PlayButton.Size
	let videoTitle: String
	let playContent: (Double) -> Void
	
	@State var isShowingMedia = false
	@FetchRequest var watchProgresses: FetchedResults<WatchProgress>
	@FocusState private var isFocused
	
	var progress: CGFloat {
		if let watchProgress = watchProgresses.first {
			let progress = watchProgress.progress
			return progress >= 0.95 ? 1.0 : progress
		} else {
			return 0.0
		}
	}
	
	var body: some View {
		switch viewMode {
		case .playButton:
			ZStack {
				image
				
				PlayButton(size: playButtonSize, videoTitle: videoTitle, action: {
					self.playContent(progress)
				})
					.focused($isFocused)
			}
		case .imageCard:
			Button(action: {
				self.playContent(progress)
			}, label: {
				image
			})
				.buttonStyle(.card)
				.focused($isFocused)
				.padding()
		}
	}
	
	var image: some View {
		CachedAsyncImage(url: thumbnail.pathUrlOrNil, content: { image in
			ZStack(alignment: .bottomLeading) {
				// Thumbnail image
				image
					.resizable()
					.scaledToFit()
					.frame(width: width)
					.accessibilityLabel("Thumbnail")
				
				// Watch progress indicator
				GeometryReader { geometry in
					Rectangle()
						.fill(LinearGradient(colors: [FPColors.watchProgressIndicatorBegin, FPColors.watchProgressIndicatorEnd], startPoint: .leading, endPoint: .trailing))
						.frame(width: geometry.size.width)
						.mask(alignment: .leading) {
							Rectangle().frame(width: geometry.size.width * progress)
						}
				}
				.frame(height: isFocused ? 16 : 8)
				.animation(.spring(), value: isFocused)
				.accessibilityLabel(progress == 0 ? "Not watched" : progress == 1 ? "Watched" : "\(Int(progress * 100)) percent watched")
			}
				.frame(width: width)
				// Apply the cornerRadius on the ZStack to get the corners of the watch progress indicator
				.cornerRadius(10.0)
		}, placeholder: {
			ZStack {
				ProgressView()
				Rectangle()
					.fill(.clear)
					.aspectRatio(thumbnail?.aspectRatio ?? 1.0, contentMode: .fit)
					.frame(width: width)
			}
		})
	}
}

struct PlayMediaView_Previews: PreviewProvider {
	static var previews: some View {
		VStack {
			PlayMediaView(
				thumbnail: MockData.blogPosts.blogPosts.first!.thumbnail,
				viewMode: .playButton,
				width: 200,
				playButtonSize: .small,
				videoTitle: "video title here",
				playContent: { _ in },
				watchProgresses: FetchRequest(entity: WatchProgress.entity(), sortDescriptors: [], predicate: NSPredicate(format: "blogPostId = %@", MockData.blogPosts.blogPosts.first!.id), animation: .default)
			)
				.environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)

			PlayMediaView(
				thumbnail: MockData.blogPosts.blogPosts.first!.thumbnail,
				viewMode: .imageCard,
				width: 500,
				playButtonSize: .default,
				videoTitle: "video title here",
				playContent: { _ in },
				watchProgresses: FetchRequest(entity: WatchProgress.entity(), sortDescriptors: [], predicate: NSPredicate(format: "blogPostId = %@", MockData.blogPosts.blogPosts.first!.id), animation: .default)
			)
				.environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)

		}
	}
}
