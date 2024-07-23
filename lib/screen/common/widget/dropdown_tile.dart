import 'package:flutter/material.dart';

class DropdownTile extends StatefulWidget {
  final String? title;
  final String selectedValue;
  final Function(String) onChanged;
  final Map<String, List<String>> options;
  final bool hideSelectedValue;

  const DropdownTile({
    this.title,
    required this.selectedValue,
    required this.onChanged,
    required this.options,
    this.hideSelectedValue = false,
    super.key,
  });

  @override
  State<DropdownTile> createState() => _DropdownTileState();
}

class _DropdownTileState extends State<DropdownTile> {
  OverlayEntry? _dropdownOverlayEntry;
  final LayerLink _layerLink = LayerLink();

  void _showDropdown(BuildContext context) {
    _removeDropdown();
    _dropdownOverlayEntry = _createDropdownOverlay(context);
    Overlay.of(context).insert(_dropdownOverlayEntry!);
  }

  OverlayEntry _createDropdownOverlay(BuildContext context) {
    return OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _removeDropdown,
        child: Stack(
          children: [
            Positioned(
              width: MediaQuery.of(context).size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: const Offset(0.0, 40.0),
                child: Material(
                  elevation: 4.0,
                  child: _buildDropdownContent(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownContent() {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 300.0,
      ),
      child: ListView.builder(
        itemCount: widget.options.length,
        itemBuilder: (BuildContext context, int index) {
          String key = widget.options.keys.elementAt(index);
          List<String> values = widget.options[key]!;

          return ExpansionTile(
            title: Text(
              key,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: values.map((option) {
              return ListTile(
                title: Text(
                  option,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  widget.onChanged(option);
                  _removeDropdown();
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }

  void _removeDropdown() {
    _dropdownOverlayEntry?.remove();
    _dropdownOverlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: ListTile(
        title: Text(
          widget.hideSelectedValue
              ? widget.title ?? ''
              : (widget.title != null
              ? '${widget.title}: ${widget.selectedValue}'
              : widget.selectedValue),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () => _showDropdown(context),
      ),
    );
  }
}
