package presentation.categories

import kotlinx.coroutines.flow.StateFlow

interface CategoriesUseCase {
    fun observeCategories(): StateFlow<CategoryModel>
    fun getCategories()
    suspend fun getCategoriesSuspendable()
    fun onDestroy()
}
