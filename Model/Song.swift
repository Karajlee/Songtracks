//
//  Song.swift
//  Songtracks
//
//  Created by Kara Lee on 12/4/23.
//
import Foundation

struct SongUrl: Decodable {
    let tracks: Tracks

    struct Tracks: Decodable {
        let track: [Song]
        private enum CodingKeys: String, CodingKey {
            case track
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let allTracks = try container.decode([Song].self, forKey: .track)
            track = Array(allTracks.prefix(5))
        }
    }
}

struct Song: Decodable, Hashable {
    let name: String
    let duration: String
    let mbid: String
    let url: String
    let streamable: [String: String]
    let artist: Artist
    let image: [SongImage]
    let rank: String?

    struct Artist: Decodable {
        let name: String
        let mbid: String
        let url: String
    }

    struct SongImage: Decodable {
        let text: String
        let size: String
        enum CodingKeys: String, CodingKey {
            case text = "#text"
            case size
        }
    }

    static func == (lhs: Song, rhs: Song) -> Bool {
        return lhs.mbid == rhs.mbid
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(mbid)
    }
}

