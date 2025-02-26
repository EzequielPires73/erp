import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class DropdownSelect<T> extends StatefulWidget {
  final String label;
  final T? value;
  final List<T> items;
  final String Function(T) getLabel;
  final Function(T?) onChange;

  const DropdownSelect({
    super.key,
    required this.label,
    required this.items,
    required this.getLabel,
    this.value,
    required this.onChange,
  });

  @override
  State<DropdownSelect<T>> createState() => _DropdownSelectState<T>();
}

class _DropdownSelectState<T> extends State<DropdownSelect<T>> {
  T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          InkWell(
            onTap: () => _showSelectDialog(),
            child: Container(
              height: 48,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: CustomColors.navbar,
                border: Border.all(color: CustomColors.border),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _selectedValue != null
                        ? Text(
                            widget.getLabel(_selectedValue as T),
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          )
                        : const Text(
                            'Selecione uma opção',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white54,
                            ),
                          ),
                  ),
                  _selectedValue != null
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _selectedValue = null;
                            });
                            widget.onChange(null);
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 20,
                          ))
                      : Container(),
                  const Icon(Icons.expand_more_outlined)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSelectDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      showDragHandle: true,
      backgroundColor: CustomColors.navbar,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.4,
          maxChildSize: 0.9,
          expand: false,
          builder: (context, scrollController) {
            return SelectDialog<T>(
              items: widget.items,
              getLabel: widget.getLabel,
              value: _selectedValue,
              onChange: (T? value) {
                setState(() {
                  _selectedValue = value;
                });
                widget.onChange(value);
              }, // Passa o controller para a lista
            );
          },
        );
      },
    );
  }
}

class SelectDialog<T> extends StatefulWidget {
  final List<T> items;
  final String Function(T) getLabel;
  final T? value;
  final Function(T?) onChange;

  const SelectDialog({
    super.key,
    required this.items,
    required this.getLabel,
    this.value,
    required this.onChange,
  });

  @override
  State<SelectDialog<T>> createState() => _SelectDialogState<T>();
}

class _SelectDialogState<T> extends State<SelectDialog<T>> {
  late List<T> _filteredItems;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  void _filterItems(String query) {
    setState(() {
      _searchQuery = query;
      _filteredItems = widget.items.where((item) {
        return widget
            .getLabel(item)
            .toLowerCase()
            .contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 400,
      child: Column(
        children: [
          const Text(
            'Selecione uma opção',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          TextField(
            onChanged: _filterItems,
            decoration: InputDecoration(
              hintText: 'Pesquisar...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.black26),
              ),
              prefixIcon: const Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              children: _filteredItems
                  .map(
                    (item) => RadioListTile<T>(
                      title: Text(widget.getLabel(item)),
                      value: item,
                      groupValue: widget.value,
                      onChanged: (T? selectedItem) {
                        widget.onChange(selectedItem);
                        Navigator.pop(context);
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
