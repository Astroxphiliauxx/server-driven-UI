import 'package:flutter/material.dart';
import 'package:sdui_models/sdui_models.dart';
import '../handlers/action_handler.dart';

class ComponentMapper {
  static Widget map(ComponentModel component, ActionHandler handler) {
    return switch (component) {
      TitleComponent(:final title, :final subtitle) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ],
        ),
      ),
      
      SpacerComponent(:final height) => SizedBox(height: height),
      
      ImageBannerComponent(:final imageUrl, :final height) => Image.network(
        imageUrl,
        height: height,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          height: height,
          color: Colors.grey[300],
          child: const Center(child: Icon(Icons.broken_image, size: 40)),
        ),
      ),
      
      ButtonComponent(:final label, :final action, :final isPrimary) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SizedBox(
          width: double.infinity,
          child: isPrimary 
            ? FilledButton(
                onPressed: () => handler.execute(action),
                child: Text(label),
              )
            : OutlinedButton(
                onPressed: () => handler.execute(action),
                child: Text(label),
              ),
        ),
      ),
      
      CardComponent(:var title, :var subtitle, :var imageUrl, :var action) => Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: action != null ? () => handler.execute(action) : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (imageUrl != null)
                Image.network(
                  imageUrl,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 4),
                      Text(subtitle),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      
      HorizontalListComponent(:final items, :final height) => SizedBox(
        height: height,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (_, __) => const SizedBox(width: 8),
          itemBuilder: (_, i) => SizedBox(
            width: 280, // Fixed width for horizontal items
            child: map(items[i], handler),
          ),
        ),
      ),
      
      InfoTileComponent(:final title, :final subtitle, :final avatarUrl, :final leadingIcon, :final action) => ListTile(
        onTap: action != null ? () => handler.execute(action) : null,
        leading: _buildLeading(avatarUrl, leadingIcon),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        trailing: action != null ? const Icon(Icons.chevron_right) : null,
      ),
      
      DividerComponent(:final thickness) => Divider(thickness: thickness),
    };
  }

  static Widget? _buildLeading(String? avatarUrl, String? iconName) {
    if (avatarUrl != null) {
      return CircleAvatar(backgroundImage: NetworkImage(avatarUrl));
    }
    if (iconName != null) {
      IconData icon;
      switch (iconName) {
        case 'notifications': icon = Icons.notifications;
        case 'privacy': icon = Icons.privacy_tip;
        case 'info': icon = Icons.info;
        default: icon = Icons.circle;
      }
      return Icon(icon);
    }
    return null;
  }
}
