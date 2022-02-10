import 'dart:convert';

import 'package:equatable/equatable.dart';

class NewsItem extends Equatable {
	final String? by;
	final int? descendants;
	final int? id;
	final int? score;
	final int? time;
	final String? title;
	final String? type;
	final String? url;

	const NewsItem({
		this.by, 
		this.descendants, 
		this.id, 
		this.score, 
		this.time, 
		this.title, 
		this.type, 
		this.url, 
	});

	factory NewsItem.fromMap(Map<String, dynamic> data) => NewsItem(
				by: data['by'] as String?,
				descendants: data['descendants'] as int?,
				id: data['id'] as int?,
				score: data['score'] as int?,
				time: data['time'] as int?,
				title: data['title'] as String?,
				type: data['type'] as String?,
				url: data['url'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'by': by,
				'descendants': descendants,
				'id': id,
				'score': score,
				'time': time,
				'title': title,
				'type': type,
				'url': url,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NewsItem].
	factory NewsItem.fromJson(String data) {
		return NewsItem.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [NewsItem] to a JSON string.
	String toJson() => json.encode(toMap());

	NewsItem copyWith({
		String? by,
		int? descendants,
		int? id,
		List<int>? kids,
		int? score,
		int? time,
		String? title,
		String? type,
		String? url,
	}) {
		return NewsItem(
			by: by ?? this.by,
			descendants: descendants ?? this.descendants,
			id: id ?? this.id,
			score: score ?? this.score,
			time: time ?? this.time,
			title: title ?? this.title,
			type: type ?? this.type,
			url: url ?? this.url,
		);
	}

	@override
	List<Object?> get props {
		return [
				by,
				descendants,
				id,
				score,
				time,
				title,
				type,
				url,
		];
	}
}
